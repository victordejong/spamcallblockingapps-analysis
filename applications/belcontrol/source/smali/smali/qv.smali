.class public Lqv;
.super Lhs;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field public final e:Ljava/io/FileDescriptor;

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/Object;

.field public i:Landroid/net/Uri;

.field public j:Ljava/io/InputStream;

.field public k:J

.field public l:Z

.field public m:J


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;JJLjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhs;-><init>(Z)V

    iput-object p1, p0, Lqv;->e:Ljava/io/FileDescriptor;

    iput-wide p2, p0, Lqv;->f:J

    iput-wide p4, p0, Lqv;->g:J

    iput-object p6, p0, Lqv;->h:Ljava/lang/Object;

    return-void
.end method

.method public static g(Ljava/io/FileDescriptor;JJLjava/lang/Object;)Lls$a;
    .locals 8

    new-instance v7, Lqv$a;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lqv$a;-><init>(Ljava/io/FileDescriptor;JJLjava/lang/Object;)V

    return-object v7
.end method


# virtual methods
.method public a(Los;)J
    .locals 5

    iget-object v0, p1, Los;->a:Landroid/net/Uri;

    iput-object v0, p0, Lqv;->i:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lhs;->e(Los;)V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lqv;->e:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lqv;->j:Ljava/io/InputStream;

    iget-wide v0, p1, Los;->f:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    :goto_0
    iput-wide v0, p0, Lqv;->k:J

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lqv;->g:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v2, p1, Los;->e:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lqv;->k:J

    :goto_1
    iget-wide v0, p0, Lqv;->f:J

    iget-wide v2, p1, Los;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lqv;->m:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqv;->l:Z

    invoke-virtual {p0, p1}, Lhs;->f(Los;)V

    iget-wide v0, p0, Lqv;->k:J

    return-wide v0
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lqv;->i:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lqv;->j:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, Lqv;->j:Ljava/io/InputStream;

    iget-boolean v0, p0, Lqv;->l:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lqv;->l:Z

    invoke-virtual {p0}, Lhs;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iput-object v0, p0, Lqv;->j:Ljava/io/InputStream;

    iget-boolean v0, p0, Lqv;->l:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lqv;->l:Z

    invoke-virtual {p0}, Lhs;->d()V

    :cond_2
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lqv;->i:Landroid/net/Uri;

    invoke-static {v0}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 7

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lqv;->k:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v5, p3

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_0
    iget-object v0, p0, Lqv;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lqv;->e:Ljava/io/FileDescriptor;

    iget-wide v5, p0, Lqv;->m:J

    invoke-static {v1, v5, v6}, Lrv;->b(Ljava/io/FileDescriptor;J)V

    iget-object v1, p0, Lqv;->j:Ljava/io/InputStream;

    invoke-static {v1}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_4

    iget-wide p1, p0, Lqv;->k:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    monitor-exit v0

    return v4

    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    iget-wide p2, p0, Lqv;->m:J

    int-to-long v4, p1

    add-long/2addr p2, v4

    iput-wide p2, p0, Lqv;->m:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide p2, p0, Lqv;->k:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_5

    sub-long/2addr p2, v4

    iput-wide p2, p0, Lqv;->k:J

    :cond_5
    invoke-virtual {p0, p1}, Lhs;->c(I)V

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
