.class public final Lys;
.super Lhs;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lys$a;
    }
.end annotation


# instance fields
.field public e:Ljava/io/RandomAccessFile;

.field public f:Landroid/net/Uri;

.field public g:J

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhs;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Los;)J
    .locals 6

    :try_start_0
    iget-object v0, p1, Los;->a:Landroid/net/Uri;

    iput-object v0, p0, Lys;->f:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lhs;->e(Los;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lys;->e:Ljava/io/RandomAccessFile;

    iget-wide v2, p1, Los;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v2, p1, Los;->f:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Los;->e:J

    sub-long v2, v0, v2

    :cond_0
    iput-wide v2, p0, Lys;->g:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lys;->h:Z

    invoke-virtual {p0, p1}, Lhs;->f(Los;)V

    iget-wide v0, p0, Lys;->g:J

    return-wide v0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lys$a;

    invoke-direct {v0, p1}, Lys$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public close()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lys;->f:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lys;->e:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, Lys;->e:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lys;->h:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lys;->h:Z

    invoke-virtual {p0}, Lhs;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Lys$a;

    invoke-direct {v3, v2}, Lys$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lys;->e:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lys;->h:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lys;->h:Z

    invoke-virtual {p0}, Lhs;->d()V

    :cond_2
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lys;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 5

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lys;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lys;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lys;->g:J

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    iget-wide p2, p0, Lys;->g:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lys;->g:J

    invoke-virtual {p0, p1}, Lhs;->c(I)V

    :cond_2
    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lys$a;

    invoke-direct {p2, p1}, Lys$a;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
