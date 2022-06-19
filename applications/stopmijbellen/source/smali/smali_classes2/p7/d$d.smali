.class public Lp7/d$d;
.super Lk7/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public h:Lp7/d$h;

.field public i:Lk7/l;

.field public j:Lu7/a;

.field public k:Z

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lp7/d$h;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk7/r;-><init>()V

    .line 2
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    iput-object v0, p0, Lp7/d$d;->i:Lk7/l;

    .line 3
    new-instance v0, Lu7/a;

    invoke-direct {v0}, Lu7/a;-><init>()V

    iput-object v0, p0, Lp7/d$d;->j:Lu7/a;

    .line 4
    new-instance v1, Lp7/d$d$a;

    invoke-direct {v1, p0}, Lp7/d$d$a;-><init>(Lp7/d$d;)V

    iput-object v1, p0, Lp7/d$d;->l:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lp7/d$d;->h:Lp7/d$h;

    long-to-int p1, p2

    .line 6
    iput p1, v0, Lu7/a;->b:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk7/r;->a()Lk7/h;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lk7/h;->e:Ljava/lang/Thread;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lk7/r;->a()Lk7/h;

    move-result-object v0

    new-instance v1, Lp7/d$d$b;

    invoke-direct {v1, p0}, Lp7/d$d$b;-><init>(Lp7/d$d;)V

    invoke-virtual {v0, v1}, Lk7/h;->g(Ljava/lang/Runnable;)Lm7/a;

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lp7/d$d;->i:Lk7/l;

    invoke-virtual {v0}, Lk7/l;->n()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lp7/d$d;->h:Lp7/d$h;

    .line 7
    iget-object v2, v2, Lp7/d$h;->b:Ljava/io/FileInputStream;

    aput-object v2, v0, v1

    .line 8
    invoke-static {v0}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 9
    invoke-super {p0}, Lk7/r;->close()V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lp7/d$d;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lp7/d$d;->h:Lp7/d$h;

    .line 3
    iget-object v2, v2, Lp7/d$h;->b:Ljava/io/FileInputStream;

    aput-object v2, v0, v1

    .line 4
    invoke-static {v0}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 5
    invoke-super {p0, p1}, Lk7/n;->n(Ljava/lang/Exception;)V

    return-void
.end method

.method public p()V
    .locals 6

    .line 1
    iget-object v0, p0, Lp7/d$d;->i:Lk7/l;

    .line 2
    iget v1, v0, Lk7/l;->c:I

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0, p0, v0}, Lk7/r;->c(Lk7/m;Lk7/l;)V

    .line 4
    iget-object v0, p0, Lp7/d$d;->i:Lk7/l;

    .line 5
    iget v0, v0, Lk7/l;->c:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6
    :try_start_0
    iget-object v1, p0, Lp7/d$d;->j:Lu7/a;

    invoke-virtual {v1}, Lu7/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lp7/d$d;->h:Lp7/d$h;

    .line 8
    iget-object v2, v2, Lp7/d$h;->b:Ljava/io/FileInputStream;

    .line 9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 10
    invoke-static {v1}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    .line 11
    iput-boolean v0, p0, Lp7/d$d;->k:Z

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Lp7/d$d;->n(Ljava/lang/Exception;)V

    return-void

    .line 13
    :cond_1
    iget-object v3, p0, Lp7/d$d;->j:Lu7/a;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lu7/a;->c(J)V

    .line 14
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 15
    iget-object v2, p0, Lp7/d$d;->i:Lk7/l;

    invoke-virtual {v2, v1}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object v0, p0, Lp7/d$d;->i:Lk7/l;

    invoke-virtual {p0, p0, v0}, Lk7/r;->c(Lk7/m;Lk7/l;)V

    .line 17
    iget-object v0, p0, Lp7/d$d;->i:Lk7/l;

    .line 18
    iget v0, v0, Lk7/l;->c:I

    if-lez v0, :cond_2

    return-void

    .line 19
    :cond_2
    invoke-virtual {p0}, Lk7/r;->a()Lk7/h;

    move-result-object v0

    iget-object v1, p0, Lp7/d$d;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    return-void

    :catch_0
    move-exception v1

    .line 20
    iput-boolean v0, p0, Lp7/d$d;->k:Z

    .line 21
    invoke-virtual {p0, v1}, Lp7/d$d;->n(Ljava/lang/Exception;)V

    return-void
.end method
