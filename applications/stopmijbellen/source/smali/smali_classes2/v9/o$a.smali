.class public final Lv9/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv9/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Laa/f;

.field public b:Z

.field public c:Z

.field public final synthetic d:Lv9/o;


# direct methods
.method public constructor <init>(Lv9/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv9/o$a;->d:Lv9/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Laa/f;

    invoke-direct {p1}, Laa/f;-><init>()V

    iput-object p1, p0, Lv9/o$a;->a:Laa/f;

    return-void
.end method


# virtual methods
.method public E(Laa/f;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/o$a;->a:Laa/f;

    invoke-virtual {v0, p1, p2, p3}, Laa/f;->E(Laa/f;J)V

    .line 2
    :goto_0
    iget-object p1, p0, Lv9/o$a;->a:Laa/f;

    .line 3
    iget-wide p1, p1, Laa/f;->b:J

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lv9/o$a;->d(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Laa/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lv9/o$a;->d:Lv9/o;

    iget-object v0, v0, Lv9/o;->j:Lv9/o$c;

    return-object v0
.end method

.method public close()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/o$a;->d:Lv9/o;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lv9/o$a;->b:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v0, p0, Lv9/o$a;->d:Lv9/o;

    iget-object v1, v0, Lv9/o;->h:Lv9/o$a;

    iget-boolean v1, v1, Lv9/o$a;->c:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lv9/o$a;->a:Laa/f;

    .line 6
    iget-wide v3, v1, Laa/f;->b:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 7
    :goto_0
    iget-object v0, p0, Lv9/o$a;->a:Laa/f;

    .line 8
    iget-wide v0, v0, Laa/f;->b:J

    cmp-long v3, v0, v5

    if-lez v3, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Lv9/o$a;->d(Z)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v7, v0, Lv9/o;->d:Lv9/f;

    iget v8, v0, Lv9/o;->c:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lv9/f;->D(IZLaa/f;J)V

    .line 11
    :cond_2
    iget-object v1, p0, Lv9/o$a;->d:Lv9/o;

    monitor-enter v1

    .line 12
    :try_start_1
    iput-boolean v2, p0, Lv9/o$a;->b:Z

    .line 13
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iget-object v0, p0, Lv9/o$a;->d:Lv9/o;

    iget-object v0, v0, Lv9/o;->d:Lv9/f;

    .line 15
    iget-object v0, v0, Lv9/f;->r:Lv9/p;

    invoke-virtual {v0}, Lv9/p;->flush()V

    .line 16
    iget-object v0, p0, Lv9/o$a;->d:Lv9/o;

    invoke-virtual {v0}, Lv9/o;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final d(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/o$a;->d:Lv9/o;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lv9/o$a;->d:Lv9/o;

    iget-object v1, v1, Lv9/o;->j:Lv9/o$c;

    invoke-virtual {v1}, Laa/c;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :goto_0
    :try_start_1
    iget-object v1, p0, Lv9/o$a;->d:Lv9/o;

    iget-wide v2, v1, Lv9/o;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    iget-boolean v2, p0, Lv9/o$a;->c:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lv9/o$a;->b:Z

    if-nez v2, :cond_0

    iget v2, v1, Lv9/o;->k:I

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lv9/o;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    iget-object v1, v1, Lv9/o;->j:Lv9/o$c;

    invoke-virtual {v1}, Lv9/o$c;->n()V

    .line 6
    iget-object v1, p0, Lv9/o$a;->d:Lv9/o;

    invoke-virtual {v1}, Lv9/o;->b()V

    .line 7
    iget-object v1, p0, Lv9/o$a;->d:Lv9/o;

    iget-wide v1, v1, Lv9/o;->b:J

    iget-object v3, p0, Lv9/o$a;->a:Laa/f;

    .line 8
    iget-wide v3, v3, Laa/f;->b:J

    .line 9
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 10
    iget-object v1, p0, Lv9/o$a;->d:Lv9/o;

    iget-wide v2, v1, Lv9/o;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lv9/o;->b:J

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    iget-object v0, v1, Lv9/o;->j:Lv9/o$c;

    invoke-virtual {v0}, Laa/c;->i()V

    .line 13
    :try_start_3
    iget-object v0, p0, Lv9/o$a;->d:Lv9/o;

    iget-object v5, v0, Lv9/o;->d:Lv9/f;

    iget v6, v0, Lv9/o;->c:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lv9/o$a;->a:Laa/f;

    .line 14
    iget-wide v0, p1, Laa/f;->b:J

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    .line 15
    :goto_1
    iget-object v8, p0, Lv9/o$a;->a:Laa/f;

    invoke-virtual/range {v5 .. v10}, Lv9/f;->D(IZLaa/f;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    iget-object p1, p0, Lv9/o$a;->d:Lv9/o;

    iget-object p1, p1, Lv9/o;->j:Lv9/o$c;

    invoke-virtual {p1}, Lv9/o$c;->n()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lv9/o$a;->d:Lv9/o;

    iget-object v0, v0, Lv9/o;->j:Lv9/o$c;

    invoke-virtual {v0}, Lv9/o$c;->n()V

    throw p1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_4
    iget-object v1, p0, Lv9/o$a;->d:Lv9/o;

    iget-object v1, v1, Lv9/o;->j:Lv9/o$c;

    invoke-virtual {v1}, Lv9/o$c;->n()V

    throw p1

    :catchall_2
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/o$a;->d:Lv9/o;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lv9/o$a;->d:Lv9/o;

    invoke-virtual {v1}, Lv9/o;->b()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object v0, p0, Lv9/o$a;->a:Laa/f;

    .line 5
    iget-wide v0, v0, Laa/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lv9/o$a;->d(Z)V

    .line 7
    iget-object v0, p0, Lv9/o$a;->d:Lv9/o;

    iget-object v0, v0, Lv9/o;->d:Lv9/f;

    invoke-virtual {v0}, Lv9/f;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
