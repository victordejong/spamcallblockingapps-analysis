.class Lcom/google/android/exoplayer2/source/z;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/z$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/e;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/util/v;

.field private d:Lcom/google/android/exoplayer2/source/z$a;

.field private e:Lcom/google/android/exoplayer2/source/z$a;

.field private f:Lcom/google/android/exoplayer2/source/z$a;

.field private g:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/upstream/e;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/e;->e()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/z;->b:I

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/source/z$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/source/z$a;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/source/z$a;

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->f:Lcom/google/android/exoplayer2/source/z$a;

    return-void
.end method

.method private a(J)V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/z$a;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/z$a;->e:Lcom/google/android/exoplayer2/source/z$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/source/z$a;)V
    .locals 6

    .line 1
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/z$a;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->f:Lcom/google/android/exoplayer2/source/z$a;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/z$a;->c:Z

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/z$a;->a:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/z$a;->a:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/source/z;->b:I

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 3
    new-array v0, v1, [Lcom/google/android/exoplayer2/upstream/d;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/z$a;->d:Lcom/google/android/exoplayer2/upstream/d;

    aput-object v3, v0, v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/z$a;->a()Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/e;->d([Lcom/google/android/exoplayer2/upstream/d;)V

    return-void
.end method

.method private e(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/z;->g:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/z;->g:J

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->f:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/z$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/z$a;->e:Lcom/google/android/exoplayer2/source/z$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/z;->f:Lcom/google/android/exoplayer2/source/z$a;

    :cond_0
    return-void
.end method

.method private f(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->f:Lcom/google/android/exoplayer2/source/z$a;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/z$a;->c:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/upstream/e;

    .line 3
    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/e;->b()Lcom/google/android/exoplayer2/upstream/d;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/z$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/z;->f:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/z;->b:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/z$a;-><init>(JI)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/z$a;->b(Lcom/google/android/exoplayer2/upstream/d;Lcom/google/android/exoplayer2/source/z$a;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->f:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/z$a;->b:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/z;->g:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private g(JLjava/nio/ByteBuffer;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/z;->a(J)V

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/z$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/z$a;->d:Lcom/google/android/exoplayer2/upstream/d;

    .line 4
    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/d;->a:[B

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/source/z$a;->c(J)I

    move-result v1

    invoke-virtual {p3, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/z$a;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/z$a;->e:Lcom/google/android/exoplayer2/source/z$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h(J[BI)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/z;->a(J)V

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/z$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v3, v2, Lcom/google/android/exoplayer2/source/z$a;->d:Lcom/google/android/exoplayer2/upstream/d;

    .line 4
    iget-object v3, v3, Lcom/google/android/exoplayer2/upstream/d;->a:[B

    .line 5
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/source/z$a;->c(J)I

    move-result v2

    sub-int v4, p4, v0

    .line 6
    invoke-static {v3, v2, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/z$a;->b:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 8
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/z$a;->e:Lcom/google/android/exoplayer2/source/z$a;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i(Lcom/google/android/exoplayer2/b1/e;Lcom/google/android/exoplayer2/source/a0$a;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    .line 2
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 3
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/z;->h(J[BI)V

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 4
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v6, 0x0

    aget-byte v4, v4, v6

    and-int/lit16 v7, v4, 0x80

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    and-int/lit8 v4, v4, 0x7f

    move-object/from16 v8, p1

    .line 5
    iget-object v8, v8, Lcom/google/android/exoplayer2/b1/e;->d:Lcom/google/android/exoplayer2/b1/b;

    .line 6
    iget-object v9, v8, Lcom/google/android/exoplayer2/b1/b;->a:[B

    if-nez v9, :cond_1

    const/16 v9, 0x10

    new-array v9, v9, [B

    .line 7
    iput-object v9, v8, Lcom/google/android/exoplayer2/b1/b;->a:[B

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v9, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 9
    :goto_1
    iget-object v9, v8, Lcom/google/android/exoplayer2/b1/b;->a:[B

    invoke-direct {v0, v2, v3, v9, v4}, Lcom/google/android/exoplayer2/source/z;->h(J[BI)V

    int-to-long v9, v4

    add-long/2addr v2, v9

    if-eqz v7, :cond_2

    .line 10
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 11
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/z;->h(J[BI)V

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    .line 12
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v5

    move v9, v5

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    .line 13
    :goto_2
    iget-object v4, v8, Lcom/google/android/exoplayer2/b1/b;->d:[I

    if-eqz v4, :cond_3

    .line 14
    array-length v5, v4

    if-ge v5, v9, :cond_4

    .line 15
    :cond_3
    new-array v4, v9, [I

    :cond_4
    move-object v10, v4

    .line 16
    iget-object v4, v8, Lcom/google/android/exoplayer2/b1/b;->e:[I

    if-eqz v4, :cond_5

    .line 17
    array-length v5, v4

    if-ge v5, v9, :cond_6

    .line 18
    :cond_5
    new-array v4, v9, [I

    :cond_6
    move-object v11, v4

    if-eqz v7, :cond_7

    mul-int/lit8 v4, v9, 0x6

    .line 19
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 20
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/google/android/exoplayer2/source/z;->h(J[BI)V

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 21
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    :goto_3
    if-ge v6, v9, :cond_8

    .line 22
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v4

    aput v4, v10, v6

    .line 23
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v4

    aput v4, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 24
    :cond_7
    aput v6, v10, v6

    .line 25
    iget v4, v1, Lcom/google/android/exoplayer2/source/a0$a;->a:I

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    sub-long v12, v2, v12

    long-to-int v5, v12

    sub-int/2addr v4, v5

    aput v4, v11, v6

    .line 26
    :cond_8
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/a0$a;->c:Lcom/google/android/exoplayer2/c1/v$a;

    .line 27
    iget-object v12, v4, Lcom/google/android/exoplayer2/c1/v$a;->b:[B

    iget-object v13, v8, Lcom/google/android/exoplayer2/b1/b;->a:[B

    iget v14, v4, Lcom/google/android/exoplayer2/c1/v$a;->a:I

    iget v15, v4, Lcom/google/android/exoplayer2/c1/v$a;->c:I

    iget v4, v4, Lcom/google/android/exoplayer2/c1/v$a;->d:I

    move/from16 v16, v4

    invoke-virtual/range {v8 .. v16}, Lcom/google/android/exoplayer2/b1/b;->b(I[I[I[B[BIII)V

    .line 28
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 29
    iput-wide v4, v1, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    .line 30
    iget v2, v1, Lcom/google/android/exoplayer2/source/a0$a;->a:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/exoplayer2/source/a0$a;->a:I

    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/z$a;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/z$a;->d:Lcom/google/android/exoplayer2/upstream/d;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/d;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/source/z$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/z$a;->a()Lcom/google/android/exoplayer2/source/z$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/source/z$a;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/z$a;->a:J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/z$a;->a:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    :cond_2
    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/z;->g:J

    return-wide v0
.end method

.method public j(Lcom/google/android/exoplayer2/b1/e;Lcom/google/android/exoplayer2/source/a0$a;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/z;->i(Lcom/google/android/exoplayer2/b1/e;Lcom/google/android/exoplayer2/source/a0$a;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1/a;->hasSupplementalData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 5
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/source/z;->h(J[BI)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v0

    .line 7
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    .line 8
    iget v2, p2, Lcom/google/android/exoplayer2/source/a0$a;->a:I

    sub-int/2addr v2, v1

    iput v2, p2, Lcom/google/android/exoplayer2/source/a0$a;->a:I

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/b1/e;->h(I)V

    .line 10
    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    iget-object v3, p1, Lcom/google/android/exoplayer2/b1/e;->e:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/exoplayer2/source/z;->g(JLjava/nio/ByteBuffer;I)V

    .line 11
    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    .line 12
    iget v1, p2, Lcom/google/android/exoplayer2/source/a0$a;->a:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/exoplayer2/source/a0$a;->a:I

    .line 13
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/b1/e;->m(I)V

    .line 14
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/b1/e;->g:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/google/android/exoplayer2/source/a0$a;->a:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/z;->g(JLjava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 15
    :cond_1
    iget v0, p2, Lcom/google/android/exoplayer2/source/a0$a;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/b1/e;->h(I)V

    .line 16
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/a0$a;->b:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/b1/e;->e:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/google/android/exoplayer2/source/a0$a;->a:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/z;->g(JLjava/nio/ByteBuffer;I)V

    :goto_0
    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/source/z$a;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/z;->b(Lcom/google/android/exoplayer2/source/z$a;)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/z$a;

    iget v1, p0, Lcom/google/android/exoplayer2/source/z;->b:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/z$a;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/source/z$a;

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->f:Lcom/google/android/exoplayer2/source/z$a;

    .line 5
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/z;->g:J

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e;->c()V

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/source/z$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/z;->e:Lcom/google/android/exoplayer2/source/z$a;

    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/c1/i;IZ)I
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/z;->f(I)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/z;->f:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/z$a;->d:Lcom/google/android/exoplayer2/upstream/d;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/d;->a:[B

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/z;->g:J

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/z$a;->c(J)I

    move-result v0

    .line 4
    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/exoplayer2/c1/i;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/z;->e(I)V

    return p1
.end method

.method public n(Lcom/google/android/exoplayer2/util/v;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/z;->f(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/z;->f:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/z$a;->d:Lcom/google/android/exoplayer2/upstream/d;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/d;->a:[B

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/z;->g:J

    .line 3
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/source/z$a;->c(J)I

    move-result v1

    .line 4
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    sub-int/2addr p2, v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/z;->e(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
