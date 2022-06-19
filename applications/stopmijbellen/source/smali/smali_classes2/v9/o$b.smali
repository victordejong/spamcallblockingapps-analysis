.class public final Lv9/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv9/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Laa/f;

.field public final b:Laa/f;

.field public final c:J

.field public d:Z

.field public e:Z

.field public final synthetic f:Lv9/o;


# direct methods
.method public constructor <init>(Lv9/o;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv9/o$b;->f:Lv9/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Laa/f;

    invoke-direct {p1}, Laa/f;-><init>()V

    iput-object p1, p0, Lv9/o$b;->a:Laa/f;

    .line 3
    new-instance p1, Laa/f;

    invoke-direct {p1}, Laa/f;-><init>()V

    iput-object p1, p0, Lv9/o$b;->b:Laa/f;

    .line 4
    iput-wide p2, p0, Lv9/o$b;->c:J

    return-void
.end method


# virtual methods
.method public b()Laa/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lv9/o$b;->f:Lv9/o;

    iget-object v0, v0, Lv9/o;->i:Lv9/o$c;

    return-object v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/o$b;->f:Lv9/o;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lv9/o$b;->d:Z

    .line 3
    iget-object v1, p0, Lv9/o$b;->b:Laa/f;

    .line 4
    iget-wide v2, v1, Laa/f;->b:J

    .line 5
    invoke-virtual {v1}, Laa/f;->d()V

    .line 6
    iget-object v1, p0, Lv9/o$b;->f:Lv9/o;

    .line 7
    iget-object v1, v1, Lv9/o;->e:Ljava/util/Deque;

    .line 8
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lv9/o$b;->f:Lv9/o;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    iget-object v1, p0, Lv9/o$b;->f:Lv9/o;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 12
    iget-object v0, p0, Lv9/o$b;->f:Lv9/o;

    iget-object v0, v0, Lv9/o;->d:Lv9/f;

    invoke-virtual {v0, v2, v3}, Lv9/f;->B(J)V

    .line 13
    :cond_1
    iget-object v0, p0, Lv9/o$b;->f:Lv9/o;

    invoke-virtual {v0}, Lv9/o;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public f(Laa/f;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_8

    .line 1
    :goto_0
    iget-object v2, p0, Lv9/o$b;->f:Lv9/o;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v3, p0, Lv9/o$b;->f:Lv9/o;

    iget-object v3, v3, Lv9/o;->i:Lv9/o$c;

    invoke-virtual {v3}, Laa/c;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v3, p0, Lv9/o$b;->f:Lv9/o;

    iget v4, v3, Lv9/o;->k:I

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 4
    :goto_1
    iget-boolean v5, p0, Lv9/o$b;->d:Z

    if-nez v5, :cond_7

    .line 5
    iget-object v3, v3, Lv9/o;->e:Ljava/util/Deque;

    .line 6
    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lv9/o$b;->f:Lv9/o;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object v3, p0, Lv9/o$b;->b:Laa/f;

    .line 9
    iget-wide v5, v3, Laa/f;->b:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v0

    if-lez v9, :cond_2

    .line 10
    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Laa/f;->f(Laa/f;J)J

    move-result-wide p1

    .line 11
    iget-object p3, p0, Lv9/o$b;->f:Lv9/o;

    iget-wide v5, p3, Lv9/o;->a:J

    add-long/2addr v5, p1

    iput-wide v5, p3, Lv9/o;->a:J

    if-nez v4, :cond_4

    .line 12
    iget-object p3, p3, Lv9/o;->d:Lv9/f;

    iget-object p3, p3, Lv9/f;->n:Lj4/s0;

    .line 13
    invoke-virtual {p3}, Lj4/s0;->a()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v9, p3

    cmp-long p3, v5, v9

    if-ltz p3, :cond_4

    .line 14
    iget-object p3, p0, Lv9/o$b;->f:Lv9/o;

    iget-object v3, p3, Lv9/o;->d:Lv9/f;

    iget v5, p3, Lv9/o;->c:I

    iget-wide v9, p3, Lv9/o;->a:J

    invoke-virtual {v3, v5, v9, v10}, Lv9/f;->K(IJ)V

    .line 15
    iget-object p3, p0, Lv9/o$b;->f:Lv9/o;

    iput-wide v0, p3, Lv9/o;->a:J

    goto :goto_2

    .line 16
    :cond_2
    iget-boolean v3, p0, Lv9/o$b;->e:Z

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 17
    iget-object v3, p0, Lv9/o$b;->f:Lv9/o;

    invoke-virtual {v3}, Lv9/o;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    iget-object v3, p0, Lv9/o$b;->f:Lv9/o;

    iget-object v3, v3, Lv9/o;->i:Lv9/o$c;

    invoke-virtual {v3}, Lv9/o$c;->n()V

    monitor-exit v2

    goto :goto_0

    :cond_3
    move-wide p1, v7

    :cond_4
    :goto_2
    iget-object p3, p0, Lv9/o$b;->f:Lv9/o;

    iget-object p3, p3, Lv9/o;->i:Lv9/o$c;

    invoke-virtual {p3}, Lv9/o$c;->n()V

    .line 19
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long p3, p1, v7

    if-eqz p3, :cond_5

    .line 20
    iget-object p3, p0, Lv9/o$b;->f:Lv9/o;

    iget-object p3, p3, Lv9/o;->d:Lv9/f;

    invoke-virtual {p3, p1, p2}, Lv9/f;->B(J)V

    return-wide p1

    :cond_5
    if-nez v4, :cond_6

    return-wide v7

    .line 21
    :cond_6
    new-instance p1, Lokhttp3/internal/http2/StreamResetException;

    invoke-direct {p1, v4}, Lokhttp3/internal/http2/StreamResetException;-><init>(I)V

    throw p1

    .line 22
    :cond_7
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 23
    :try_start_4
    iget-object p2, p0, Lv9/o$b;->f:Lv9/o;

    iget-object p2, p2, Lv9/o;->i:Lv9/o$c;

    invoke-virtual {p2}, Lv9/o$c;->n()V

    throw p1

    :catchall_1
    move-exception p1

    .line 24
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 25
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
