.class public final Lvp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvp$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:[I

.field public c:[J

.field public d:[I

.field public e:[I

.field public f:[J

.field public g:[Lkk$a;

.field public h:[Landroidx/media2/exoplayer/external/Format;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Landroidx/media2/exoplayer/external/Format;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lvp;->a:I

    new-array v1, v0, [I

    iput-object v1, p0, Lvp;->b:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lvp;->c:[J

    new-array v1, v0, [J

    iput-object v1, p0, Lvp;->f:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lvp;->e:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lvp;->d:[I

    new-array v1, v0, [Lkk$a;

    iput-object v1, p0, Lvp;->g:[Lkk$a;

    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p0, Lvp;->h:[Landroidx/media2/exoplayer/external/Format;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lvp;->m:J

    iput-wide v0, p0, Lvp;->n:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvp;->q:Z

    iput-boolean v0, p0, Lvp;->p:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(JZZ)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lvp;->l:I

    invoke-virtual {p0, v0}, Lvp;->n(I)I

    move-result v2

    invoke-virtual {p0}, Lvp;->q()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvp;->f:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lvp;->n:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget p4, p0, Lvp;->i:I

    iget v0, p0, Lvp;->l:I

    sub-int v3, p4, v0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lvp;->i(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v7, :cond_1

    monitor-exit p0

    return v7

    :cond_1
    :try_start_1
    iget p2, p0, Lvp;->l:I

    add-int/2addr p2, p1

    iput p2, p0, Lvp;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_2
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lvp;->i:I

    iget v1, p0, Lvp;->l:I

    sub-int v1, v0, v1

    iput v0, p0, Lvp;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(J)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lvp;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-wide v3, p0, Lvp;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    iget-wide v3, p0, Lvp;->m:J

    iget v0, p0, Lvp;->l:I

    invoke-virtual {p0, v0}, Lvp;->l(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    iget v0, p0, Lvp;->i:I

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lvp;->n(I)I

    move-result v1

    :cond_3
    :goto_0
    iget v3, p0, Lvp;->l:I

    if-le v0, v3, :cond_4

    iget-object v3, p0, Lvp;->f:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p1

    if-ltz v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    iget v1, p0, Lvp;->a:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_4
    iget p1, p0, Lvp;->j:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lvp;->h(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(JIJILkk$a;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lvp;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lvp;->p:Z

    :cond_1
    iget-boolean v0, p0, Lvp;->q:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->f(Z)V

    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lvp;->o:Z

    iget-wide v3, p0, Lvp;->n:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lvp;->n:J

    iget v0, p0, Lvp;->i:I

    invoke-virtual {p0, v0}, Lvp;->n(I)I

    move-result v0

    iget-object v3, p0, Lvp;->f:[J

    aput-wide p1, v3, v0

    iget-object p1, p0, Lvp;->c:[J

    aput-wide p4, p1, v0

    iget-object p2, p0, Lvp;->d:[I

    aput p6, p2, v0

    iget-object p2, p0, Lvp;->e:[I

    aput p3, p2, v0

    iget-object p2, p0, Lvp;->g:[Lkk$a;

    aput-object p7, p2, v0

    iget-object p2, p0, Lvp;->h:[Landroidx/media2/exoplayer/external/Format;

    iget-object p3, p0, Lvp;->r:Landroidx/media2/exoplayer/external/Format;

    aput-object p3, p2, v0

    iget-object p2, p0, Lvp;->b:[I

    iget p3, p0, Lvp;->s:I

    aput p3, p2, v0

    iget p2, p0, Lvp;->i:I

    add-int/2addr p2, v2

    iput p2, p0, Lvp;->i:I

    iget p3, p0, Lvp;->a:I

    if-ne p2, p3, :cond_4

    add-int/lit16 p2, p3, 0x3e8

    new-array p4, p2, [I

    new-array p5, p2, [J

    new-array p6, p2, [J

    new-array p7, p2, [I

    new-array v0, p2, [I

    new-array v2, p2, [Lkk$a;

    new-array v3, p2, [Landroidx/media2/exoplayer/external/Format;

    iget v4, p0, Lvp;->k:I

    sub-int/2addr p3, v4

    invoke-static {p1, v4, p5, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lvp;->f:[J

    iget v4, p0, Lvp;->k:I

    invoke-static {p1, v4, p6, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lvp;->e:[I

    iget v4, p0, Lvp;->k:I

    invoke-static {p1, v4, p7, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lvp;->d:[I

    iget v4, p0, Lvp;->k:I

    invoke-static {p1, v4, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lvp;->g:[Lkk$a;

    iget v4, p0, Lvp;->k:I

    invoke-static {p1, v4, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lvp;->h:[Landroidx/media2/exoplayer/external/Format;

    iget v4, p0, Lvp;->k:I

    invoke-static {p1, v4, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lvp;->b:[I

    iget v4, p0, Lvp;->k:I

    invoke-static {p1, v4, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lvp;->k:I

    iget-object v4, p0, Lvp;->c:[J

    invoke-static {v4, v1, p5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lvp;->f:[J

    invoke-static {v4, v1, p6, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lvp;->e:[I

    invoke-static {v4, v1, p7, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lvp;->d:[I

    invoke-static {v4, v1, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lvp;->g:[Lkk$a;

    invoke-static {v4, v1, v2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lvp;->h:[Landroidx/media2/exoplayer/external/Format;

    invoke-static {v4, v1, v3, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lvp;->b:[I

    invoke-static {v4, v1, p4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p5, p0, Lvp;->c:[J

    iput-object p6, p0, Lvp;->f:[J

    iput-object p7, p0, Lvp;->e:[I

    iput-object v0, p0, Lvp;->d:[I

    iput-object v2, p0, Lvp;->g:[Lkk$a;

    iput-object v3, p0, Lvp;->h:[Landroidx/media2/exoplayer/external/Format;

    iput-object p4, p0, Lvp;->b:[I

    iput v1, p0, Lvp;->k:I

    iget p1, p0, Lvp;->a:I

    iput p1, p0, Lvp;->i:I

    iput p2, p0, Lvp;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(I)J
    .locals 4

    iget-wide v0, p0, Lvp;->m:J

    invoke-virtual {p0, p1}, Lvp;->l(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lvp;->m:J

    iget v0, p0, Lvp;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, Lvp;->i:I

    iget v1, p0, Lvp;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Lvp;->j:I

    iget v1, p0, Lvp;->k:I

    add-int/2addr v1, p1

    iput v1, p0, Lvp;->k:I

    iget v2, p0, Lvp;->a:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lvp;->k:I

    :cond_0
    iget v1, p0, Lvp;->l:I

    sub-int/2addr v1, p1

    iput v1, p0, Lvp;->l:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lvp;->l:I

    :cond_1
    if-nez v0, :cond_3

    iget p1, p0, Lvp;->k:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    iget-object p1, p0, Lvp;->c:[J

    aget-wide v0, p1, v2

    iget-object p1, p0, Lvp;->d:[I

    aget p1, p1, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0

    :cond_3
    iget-object p1, p0, Lvp;->c:[J

    iget v0, p0, Lvp;->k:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public declared-synchronized f(JZZ)J
    .locals 10

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lvp;->i:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lvp;->f:[J

    iget v5, p0, Lvp;->k:I

    aget-wide v6, v3, v5

    cmp-long v3, p1, v6

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget p4, p0, Lvp;->l:I

    if-eq p4, v0, :cond_1

    add-int/lit8 v0, p4, 0x1

    :cond_1
    move v6, v0

    move-object v4, p0

    move-wide v7, p1

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lvp;->i(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    monitor-exit p0

    return-wide v1

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lvp;->e(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_3
    :goto_0
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lvp;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lvp;->e(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h(I)J
    .locals 7

    invoke-virtual {p0}, Lvp;->p()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iget v2, p0, Lvp;->i:I

    iget v3, p0, Lvp;->l:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lit;->a(Z)V

    iget v2, p0, Lvp;->i:I

    sub-int/2addr v2, v0

    iput v2, p0, Lvp;->i:I

    iget-wide v3, p0, Lvp;->m:J

    invoke-virtual {p0, v2}, Lvp;->l(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lvp;->n:J

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lvp;->o:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, p0, Lvp;->o:Z

    iget p1, p0, Lvp;->i:I

    if-nez p1, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lvp;->n(I)I

    move-result p1

    iget-object v0, p0, Lvp;->c:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lvp;->d:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public final i(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    iget-object v3, p0, Lvp;->f:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    iget-object v3, p0, Lvp;->e:[I

    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lvp;->a:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public declared-synchronized j(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iput-boolean v0, p0, Lvp;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lvp;->q:Z

    iget-object v2, p0, Lvp;->r:Landroidx/media2/exoplayer/external/Format;

    invoke-static {p1, v2}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iput-object p1, p0, Lvp;->r:Landroidx/media2/exoplayer/external/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lvp;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lvp;->n(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    iget-object v4, p0, Lvp;->f:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v4, p0, Lvp;->e:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    iget v2, p0, Lvp;->a:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public m()I
    .locals 2

    iget v0, p0, Lvp;->j:I

    iget v1, p0, Lvp;->l:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final n(I)I
    .locals 1

    iget v0, p0, Lvp;->k:I

    add-int/2addr v0, p1

    iget p1, p0, Lvp;->a:I

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public declared-synchronized o()Landroidx/media2/exoplayer/external/Format;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lvp;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lvp;->r:Landroidx/media2/exoplayer/external/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()I
    .locals 2

    iget v0, p0, Lvp;->j:I

    iget v1, p0, Lvp;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized q()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lvp;->l:I

    iget v1, p0, Lvp;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

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

.method public declared-synchronized r()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lvp;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s()I
    .locals 2

    iget v0, p0, Lvp;->l:I

    invoke-virtual {p0, v0}, Lvp;->n(I)I

    move-result v0

    invoke-virtual {p0}, Lvp;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lvp;->b:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lvp;->s:I

    :goto_0
    return v0
.end method

.method public declared-synchronized t(Lwg;Lzi;ZZLandroidx/media2/exoplayer/external/Format;Lvp$a;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lvp;->q()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x4

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lvp;->o:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lvp;->r:Landroidx/media2/exoplayer/external/Format;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    if-eq p2, p5, :cond_2

    :cond_1
    iput-object p2, p1, Lwg;->a:Landroidx/media2/exoplayer/external/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    const/4 p1, -0x3

    monitor-exit p0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x4

    :try_start_1
    invoke-virtual {p2, p1}, Lwi;->g(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_4
    :try_start_2
    iget p4, p0, Lvp;->l:I

    invoke-virtual {p0, p4}, Lvp;->n(I)I

    move-result p4

    if-nez p3, :cond_7

    iget-object p3, p0, Lvp;->h:[Landroidx/media2/exoplayer/external/Format;

    aget-object p3, p3, p4

    if-eq p3, p5, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lvp;->e:[I

    aget p1, p1, p4

    invoke-virtual {p2, p1}, Lwi;->g(I)V

    iget-object p1, p0, Lvp;->f:[J

    aget-wide v0, p1, p4

    iput-wide v0, p2, Lzi;->d:J

    invoke-virtual {p2}, Lzi;->l()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_6

    monitor-exit p0

    return v2

    :cond_6
    :try_start_3
    iget-object p1, p0, Lvp;->d:[I

    aget p1, p1, p4

    iput p1, p6, Lvp$a;->a:I

    iget-object p1, p0, Lvp;->c:[J

    aget-wide p2, p1, p4

    iput-wide p2, p6, Lvp$a;->b:J

    iget-object p1, p0, Lvp;->g:[Lkk$a;

    aget-object p1, p1, p4

    iput-object p1, p6, Lvp$a;->c:Lkk$a;

    iget p1, p0, Lvp;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lvp;->l:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    :cond_7
    :goto_1
    :try_start_4
    iget-object p2, p0, Lvp;->h:[Landroidx/media2/exoplayer/external/Format;

    aget-object p2, p2, p4

    iput-object p2, p1, Lwg;->a:Landroidx/media2/exoplayer/external/Format;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public u(Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lvp;->i:I

    iput v0, p0, Lvp;->j:I

    iput v0, p0, Lvp;->k:I

    iput v0, p0, Lvp;->l:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lvp;->p:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lvp;->m:J

    iput-wide v2, p0, Lvp;->n:J

    iput-boolean v0, p0, Lvp;->o:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lvp;->r:Landroidx/media2/exoplayer/external/Format;

    iput-boolean v1, p0, Lvp;->q:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized v()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lvp;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public w(I)V
    .locals 0

    iput p1, p0, Lvp;->s:I

    return-void
.end method
