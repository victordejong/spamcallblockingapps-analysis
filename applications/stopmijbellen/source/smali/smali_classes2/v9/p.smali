.class public final Lv9/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final g:Ljava/util/logging/Logger;


# instance fields
.field public final a:Laa/g;

.field public final b:Z

.field public final c:Laa/f;

.field public d:I

.field public e:Z

.field public final f:Lv9/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lv9/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lv9/p;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Laa/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv9/p;->a:Laa/g;

    .line 3
    iput-boolean p2, p0, Lv9/p;->b:Z

    .line 4
    new-instance p1, Laa/f;

    invoke-direct {p1}, Laa/f;-><init>()V

    iput-object p1, p0, Lv9/p;->c:Laa/f;

    .line 5
    new-instance p2, Lv9/b$b;

    invoke-direct {p2, p1}, Lv9/b$b;-><init>(Laa/f;)V

    iput-object p2, p0, Lv9/p;->f:Lv9/b$b;

    const/16 p1, 0x4000

    .line 6
    iput p1, p0, Lv9/p;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized A(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lv9/p;->e:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Lv9/p;->l(IIBB)V

    .line 3
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Laa/g;->q(I)Laa/g;

    .line 4
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    invoke-interface {p1}, Laa/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    .line 7
    invoke-static {p1, v0}, Lv9/c;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final B(IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 1
    iget v2, p0, Lv9/p;->d:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr p2, v4

    const/16 v2, 0x9

    cmp-long v6, p2, v0

    if-nez v6, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0, p1, v3, v2, v0}, Lv9/p;->l(IIBB)V

    .line 3
    iget-object v0, p0, Lv9/p;->a:Laa/g;

    iget-object v1, p0, Lv9/p;->c:Laa/f;

    invoke-interface {v0, v1, v4, v5}, Laa/x;->E(Laa/f;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lv9/p;->e:Z

    .line 2
    iget-object v0, p0, Lv9/p;->a:Laa/g;

    invoke-interface {v0}, Laa/x;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Lj4/s0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lv9/p;->e:Z

    if-nez v0, :cond_7

    .line 2
    iget v0, p0, Lv9/p;->d:I

    .line 3
    iget v1, p1, Lj4/s0;->a:I

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    iget-object v0, p1, Lj4/s0;->b:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v2, 0x5

    aget v0, v0, v2

    .line 4
    :cond_0
    iput v0, p0, Lv9/p;->d:I

    and-int/lit8 v0, v1, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 5
    iget-object v3, p1, Lj4/s0;->b:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    if-eq v3, v2, :cond_6

    .line 6
    iget-object v3, p0, Lv9/p;->f:Lv9/b$b;

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p1, Lj4/s0;->b:Ljava/lang/Object;

    check-cast p1, [I

    aget v2, p1, v1

    .line 8
    :cond_2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x4000

    .line 9
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 10
    iget v0, v3, Lv9/b$b;->d:I

    if-ne v0, p1, :cond_3

    goto :goto_1

    :cond_3
    if-ge p1, v0, :cond_4

    .line 11
    iget v0, v3, Lv9/b$b;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Lv9/b$b;->b:I

    .line 12
    :cond_4
    iput-boolean v1, v3, Lv9/b$b;->c:Z

    .line 13
    iput p1, v3, Lv9/b$b;->d:I

    .line 14
    iget v0, v3, Lv9/b$b;->h:I

    if-ge p1, v0, :cond_6

    if-nez p1, :cond_5

    .line 15
    invoke-virtual {v3}, Lv9/b$b;->a()V

    goto :goto_1

    :cond_5
    sub-int/2addr v0, p1

    .line 16
    invoke-virtual {v3, v0}, Lv9/b$b;->b(I)I

    :cond_6
    :goto_1
    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v0, p1, v1}, Lv9/p;->l(IIBB)V

    .line 18
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    invoke-interface {p1}, Laa/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_7
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lv9/p;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lv9/p;->a:Laa/g;

    invoke-interface {v0}, Laa/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k(ZILaa/f;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lv9/p;->e:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    int-to-byte p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p2, p4, v0, p1}, Lv9/p;->l(IIBB)V

    if-lez p4, :cond_1

    .line 3
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Laa/x;->E(Laa/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public l(IIBB)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lv9/p;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2, p1, p2, p3, p4}, Lv9/c;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget v0, p0, Lv9/p;->d:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lv9/p;->a:Laa/g;

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 4
    invoke-interface {v0, v1}, Laa/g;->w(I)Laa/g;

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 5
    invoke-interface {v0, v1}, Laa/g;->w(I)Laa/g;

    and-int/lit16 p2, p2, 0xff

    .line 6
    invoke-interface {v0, p2}, Laa/g;->w(I)Laa/g;

    .line 7
    iget-object p2, p0, Lv9/p;->a:Laa/g;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Laa/g;->w(I)Laa/g;

    .line 8
    iget-object p2, p0, Lv9/p;->a:Laa/g;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Laa/g;->w(I)Laa/g;

    .line 9
    iget-object p2, p0, Lv9/p;->a:Laa/g;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Laa/g;->q(I)Laa/g;

    return-void

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lv9/c;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Lv9/c;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v1
.end method

.method public declared-synchronized o(II[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lv9/p;->e:Z

    if-nez v0, :cond_2

    .line 2
    invoke-static {p2}, La6/h;->e(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 4
    invoke-virtual {p0, v2, v0, v1, v2}, Lv9/p;->l(IIBB)V

    .line 5
    iget-object v0, p0, Lv9/p;->a:Laa/g;

    invoke-interface {v0, p1}, Laa/g;->q(I)Laa/g;

    .line 6
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    invoke-static {p2}, La6/h;->e(I)I

    move-result p2

    invoke-interface {p1, p2}, Laa/g;->q(I)Laa/g;

    .line 7
    array-length p1, p3

    if-lez p1, :cond_0

    .line 8
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    invoke-interface {p1, p3}, Laa/g;->z([B)Laa/g;

    .line 9
    :cond_0
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    invoke-interface {p1}, Laa/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {p1, p2}, Lv9/c;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public p(ZILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lv9/a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lv9/p;->e:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lv9/p;->f:Lv9/b$b;

    invoke-virtual {v0, p3}, Lv9/b$b;->e(Ljava/util/List;)V

    .line 3
    iget-object p3, p0, Lv9/p;->c:Laa/f;

    .line 4
    iget-wide v0, p3, Laa/f;->b:J

    .line 5
    iget p3, p0, Lv9/p;->d:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p1, v5, 0x1

    int-to-byte v5, p1

    :cond_1
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p2, p3, p1, v5}, Lv9/p;->l(IIBB)V

    .line 7
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    iget-object p3, p0, Lv9/p;->c:Laa/f;

    invoke-interface {p1, p3, v2, v3}, Laa/x;->E(Laa/f;J)V

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    .line 8
    invoke-virtual {p0, p2, v0, v1}, Lv9/p;->B(IJ)V

    :cond_2
    return-void

    .line 9
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized r(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lv9/p;->e:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Lv9/p;->l(IIBB)V

    .line 3
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    invoke-interface {p1, p2}, Laa/g;->q(I)Laa/g;

    .line 4
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    invoke-interface {p1, p3}, Laa/g;->q(I)Laa/g;

    .line 5
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    invoke-interface {p1}, Laa/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized s(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lv9/p;->e:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {p2}, La6/h;->e(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Lv9/p;->l(IIBB)V

    .line 4
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    invoke-static {p2}, La6/h;->e(I)I

    move-result p2

    invoke-interface {p1, p2}, Laa/g;->q(I)Laa/g;

    .line 5
    iget-object p1, p0, Lv9/p;->a:Laa/g;

    invoke-interface {p1}, Laa/g;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
