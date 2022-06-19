.class public Luv;
.super Lbg;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luv$b;,
        Luv$c;
    }
.end annotation


# instance fields
.field public final l:Luv$c;

.field public final m:Landroid/os/Handler;

.field public final n:Lyt;

.field public final o:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field public final p:Lwg;

.field public final q:Lkr;

.field public final r:Luv$b;

.field public final s:Luv$b;

.field public final t:[I

.field public final u:Lyt;

.field public v:Z

.field public w:Z

.field public x:[Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Luv$c;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lbg;-><init>(I)V

    iput-object p1, p0, Luv;->l:Luv$c;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Luv;->m:Landroid/os/Handler;

    new-instance p1, Lyt;

    invoke-direct {p1}, Lyt;-><init>()V

    iput-object p1, p0, Luv;->n:Lyt;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Luv;->o:Ljava/util/SortedMap;

    new-instance p1, Lwg;

    invoke-direct {p1}, Lwg;-><init>()V

    iput-object p1, p0, Luv;->p:Lwg;

    new-instance p1, Lkr;

    invoke-direct {p1}, Lkr;-><init>()V

    iput-object p1, p0, Luv;->q:Lkr;

    new-instance p1, Luv$b;

    invoke-direct {p1}, Luv$b;-><init>()V

    iput-object p1, p0, Luv;->r:Luv$b;

    new-instance p1, Luv$b;

    invoke-direct {p1}, Luv$b;-><init>()V

    iput-object p1, p0, Luv;->s:Luv$b;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Luv;->t:[I

    new-instance p1, Lyt;

    invoke-direct {p1}, Lyt;-><init>()V

    iput-object p1, p0, Luv;->u:Lyt;

    const/4 p1, -0x1

    iput p1, p0, Luv;->y:I

    iput p1, p0, Luv;->z:I

    return-void
.end method


# virtual methods
.method public declared-synchronized A(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Luv;->y:I

    iput p2, p0, Luv;->z:I

    invoke-virtual {p0}, Luv;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroidx/media2/exoplayer/external/Format;)I
    .locals 1

    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string v0, "application/cea-608"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/vtt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    return p1
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Luv;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Luv;->o:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized m(JZ)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Luv;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public q([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lbg;->q([Landroidx/media2/exoplayer/external/Format;J)V

    const/16 p1, 0x80

    new-array p1, p1, [Z

    iput-object p1, p0, Luv;->x:[Z

    return-void
.end method

.method public declared-synchronized render(JJ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lbg;->getState()I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p4, 0x2

    if-eq p3, p4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Luv;->v(J)V

    iget-boolean p3, p0, Luv;->v:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_4

    iget-object p3, p0, Luv;->q:Lkr;

    invoke-virtual {p3}, Lzi;->b()V

    iget-object p3, p0, Luv;->p:Lwg;

    iget-object v2, p0, Luv;->q:Lkr;

    invoke-virtual {p0, p3, v2, v1}, Lbg;->r(Lwg;Lzi;Z)I

    move-result p3

    const/4 v2, -0x3

    if-eq p3, v2, :cond_3

    const/4 v2, -0x5

    if-ne p3, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Luv;->q:Lkr;

    invoke-virtual {p3}, Lwi;->e()Z

    move-result p3

    if-eqz p3, :cond_2

    iput-boolean v0, p0, Luv;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iput-boolean v0, p0, Luv;->v:Z

    iget-object p3, p0, Luv;->q:Lkr;

    invoke-virtual {p3}, Lzi;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    :try_start_3
    iget-object p3, p0, Luv;->q:Lkr;

    iget-wide v2, p3, Lzi;->d:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v2, p1

    const-wide/32 p1, 0x1adb0

    cmp-long v4, v2, p1

    if-lez v4, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    iput-boolean v1, p0, Luv;->v:Z

    iget-object p1, p0, Luv;->n:Lyt;

    iget-object p2, p3, Lzi;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iget-object p3, p0, Luv;->q:Lkr;

    iget-object p3, p3, Lzi;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lyt;->H([BI)V

    iget-object p1, p0, Luv;->r:Luv$b;

    invoke-virtual {p1}, Luv$b;->c()V

    :cond_6
    :goto_2
    iget-object p1, p0, Luv;->n:Lyt;

    invoke-virtual {p1}, Lyt;->a()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_12

    iget-object p1, p0, Luv;->n:Lyt;

    invoke-virtual {p1}, Lyt;->w()I

    move-result p1

    int-to-byte p1, p1

    iget-object p3, p0, Luv;->n:Lyt;

    invoke-virtual {p3}, Lyt;->w()I

    move-result p3

    int-to-byte p3, p3

    iget-object v2, p0, Luv;->n:Lyt;

    invoke-virtual {v2}, Lyt;->w()I

    move-result v2

    int-to-byte v2, v2

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    and-int/lit8 v4, p1, 0x3

    if-eqz v3, :cond_10

    if-ne v4, p2, :cond_9

    iget-object p1, p0, Luv;->s:Luv$b;

    invoke-virtual {p1}, Luv$b;->d()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Luv;->s:Luv$b;

    iget-object p2, p0, Luv;->q:Lkr;

    iget-wide v3, p2, Lzi;->d:J

    invoke-virtual {p0, p1, v3, v4}, Luv;->x(Luv$b;J)V

    :cond_8
    iget-object p1, p0, Luv;->s:Luv$b;

    invoke-virtual {p1, p3, v2}, Luv$b;->a(BB)V

    goto :goto_2

    :cond_9
    iget-object p2, p0, Luv;->s:Luv$b;

    iget v3, p2, Luv$b;->b:I

    if-lez v3, :cond_a

    if-ne v4, p4, :cond_a

    invoke-virtual {p2, p3, v2}, Luv$b;->a(BB)V

    goto :goto_2

    :cond_a
    if-eqz v4, :cond_b

    if-ne v4, v0, :cond_6

    :cond_b
    and-int/lit8 p2, p3, 0x7f

    int-to-byte p2, p2

    and-int/lit8 p3, v2, 0x7f

    int-to-byte p3, p3

    const/16 v2, 0x10

    if-ge p2, v2, :cond_c

    if-ge p3, v2, :cond_c

    goto :goto_2

    :cond_c
    if-lt p2, v2, :cond_f

    const/16 v2, 0x1f

    if-gt p2, v2, :cond_f

    const/16 v2, 0x18

    if-lt p2, v2, :cond_d

    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    :goto_4
    if-eqz p1, :cond_e

    const/4 p1, 0x2

    goto :goto_5

    :cond_e
    const/4 p1, 0x0

    :goto_5
    add-int/2addr v2, p1

    iget-object p1, p0, Luv;->t:[I

    aput v2, p1, v4

    invoke-virtual {p0, v1, v2}, Luv;->z(II)V

    :cond_f
    iget p1, p0, Luv;->y:I

    if-nez p1, :cond_6

    iget p1, p0, Luv;->z:I

    iget-object v2, p0, Luv;->t:[I

    aget v2, v2, v4

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Luv;->r:Luv$b;

    int-to-byte v2, v4

    invoke-virtual {p1, v2, p2, p3}, Luv$b;->b(BBB)V

    goto/16 :goto_2

    :cond_10
    if-eq v4, p2, :cond_11

    if-ne v4, p4, :cond_6

    :cond_11
    iget-object p1, p0, Luv;->s:Luv$b;

    invoke-virtual {p1}, Luv$b;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Luv;->s:Luv$b;

    iget-object p2, p0, Luv;->q:Lkr;

    iget-wide p2, p2, Lzi;->d:J

    invoke-virtual {p0, p1, p2, p3}, Luv;->x(Luv$b;J)V

    goto/16 :goto_2

    :cond_12
    iget p1, p0, Luv;->y:I

    if-nez p1, :cond_13

    iget-object p1, p0, Luv;->r:Luv$b;

    invoke-virtual {p1}, Luv$b;->d()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Luv;->r:Luv$b;

    iget-object p2, p0, Luv;->q:Lkr;

    iget-wide p2, p2, Lzi;->d:J

    invoke-virtual {p0, p1, p2, p3}, Luv;->y(Luv$b;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized u()V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0, v0}, Luv;->A(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v(J)V
    .locals 7

    iget v0, p0, Luv;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Luv;->z:I

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [B

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iget-object v4, p0, Luv;->o:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Luv;->o:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Luv;->o:Ljava/util/SortedMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, [B

    array-length v3, v1

    array-length v6, v2

    add-int/2addr v6, v3

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    array-length v6, v2

    invoke-static {v2, v0, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Luv;->o:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v2, v4

    goto :goto_0

    :cond_2
    :goto_1
    array-length p1, v1

    if-lez p1, :cond_3

    iget-object p1, p0, Luv;->l:Luv$c;

    invoke-interface {p1, v1, v2, v3}, Luv$c;->b([BJ)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Luv;->o:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    iget-object v0, p0, Luv;->r:Luv$b;

    invoke-virtual {v0}, Luv$b;->c()V

    iget-object v0, p0, Luv;->s:Luv$b;

    invoke-virtual {v0}, Luv$b;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Luv;->w:Z

    iput-boolean v0, p0, Luv;->v:Z

    return-void
.end method

.method public final x(Luv$b;J)V
    .locals 4

    iget-object v0, p0, Luv;->u:Lyt;

    iget-object v1, p1, Luv$b;->a:[B

    iget v2, p1, Luv$b;->b:I

    invoke-virtual {v0, v1, v2}, Lyt;->H([BI)V

    invoke-virtual {p1}, Luv$b;->c()V

    iget-object p1, p0, Luv;->u:Lyt;

    invoke-virtual {p1}, Lyt;->w()I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    if-nez p1, :cond_0

    const/16 p1, 0x40

    :cond_0
    iget-object v0, p0, Luv;->u:Lyt;

    invoke-virtual {v0}, Lyt;->d()I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 p1, p1, 0x2

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Luv;->u:Lyt;

    invoke-virtual {p1}, Lyt;->a()I

    move-result p1

    if-lt p1, v1, :cond_5

    iget-object p1, p0, Luv;->u:Lyt;

    invoke-virtual {p1}, Lyt;->w()I

    move-result p1

    and-int/lit16 v0, p1, 0xe0

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Luv;->u:Lyt;

    invoke-virtual {v0}, Lyt;->w()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-ge v0, v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Luv;->u:Lyt;

    invoke-virtual {v2}, Lyt;->a()I

    move-result v2

    if-ge v2, p1, :cond_3

    return-void

    :cond_3
    if-lez p1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Luv;->z(II)V

    iget v3, p0, Luv;->y:I

    if-ne v3, v2, :cond_4

    iget v2, p0, Luv;->z:I

    if-ne v2, v0, :cond_4

    new-array v0, p1, [B

    iget-object v2, p0, Luv;->u:Lyt;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p1}, Lyt;->f([BII)V

    iget-object p1, p0, Luv;->o:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Luv;->u:Lyt;

    invoke-virtual {v0, p1}, Lyt;->K(I)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final y(Luv$b;J)V
    .locals 2

    iget-object v0, p0, Luv;->o:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p1, Luv$b;->a:[B

    iget v1, p1, Luv$b;->b:I

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Luv$b;->c()V

    return-void
.end method

.method public final z(II)V
    .locals 3

    shl-int/lit8 v0, p1, 0x6

    add-int/2addr v0, p2

    iget-object v1, p0, Luv;->x:[Z

    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    iget-object v0, p0, Luv;->m:Landroid/os/Handler;

    new-instance v1, Luv$a;

    invoke-direct {v1, p0, p1, p2}, Luv$a;-><init>(Luv;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
