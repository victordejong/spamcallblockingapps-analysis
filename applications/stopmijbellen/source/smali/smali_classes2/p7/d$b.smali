.class public Lp7/d$b;
.super Lk7/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public h:Lp7/d$i;

.field public i:Lk7/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk7/r;-><init>()V

    return-void
.end method

.method public constructor <init>(Lp7/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lk7/r;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lk7/m;Lk7/l;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lp7/d$b;->i:Lk7/l;

    if-eqz v0, :cond_1

    .line 2
    invoke-super {p0, p1, v0}, Lk7/r;->c(Lk7/m;Lk7/l;)V

    .line 3
    iget-object v0, p0, Lp7/d$b;->i:Lk7/l;

    .line 4
    iget v0, v0, Lk7/l;->c:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lp7/d$b;->i:Lk7/l;

    .line 6
    :cond_1
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    .line 7
    :try_start_0
    iget-object v1, p0, Lp7/d$b;->h:Lp7/d$i;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Lp7/d$i;->b(I)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    :goto_0
    invoke-virtual {p2}, Lk7/l;->j()Z

    move-result v2

    if-nez v2, :cond_4

    .line 10
    invoke-virtual {p2}, Lk7/l;->o()Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 14
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 16
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 17
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 18
    :goto_1
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    invoke-virtual {v0, v2}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v2}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    throw v1

    .line 20
    :cond_3
    invoke-virtual {p0}, Lp7/d$b;->p()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    :cond_4
    :goto_2
    iget v1, p2, Lk7/l;->c:I

    .line 22
    invoke-virtual {p2, v0, v1}, Lk7/l;->d(Lk7/l;I)V

    .line 23
    iget v1, v0, Lk7/l;->c:I

    .line 24
    invoke-virtual {v0, p2, v1}, Lk7/l;->d(Lk7/l;I)V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 25
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lp7/d$b;->p()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 26
    :goto_3
    invoke-super {p0, p1, p2}, Lk7/r;->c(Lk7/m;Lk7/l;)V

    .line 27
    iget-object p1, p0, Lp7/d$b;->h:Lp7/d$i;

    if-eqz p1, :cond_5

    .line 28
    iget p1, p2, Lk7/l;->c:I

    if-lez p1, :cond_5

    .line 29
    new-instance p1, Lk7/l;

    invoke-direct {p1}, Lk7/l;-><init>()V

    iput-object p1, p0, Lp7/d$b;->i:Lk7/l;

    .line 30
    iget v0, p2, Lk7/l;->c:I

    .line 31
    invoke-virtual {p2, p1, v0}, Lk7/l;->d(Lk7/l;I)V

    :cond_5
    return-void

    .line 32
    :goto_4
    iget v1, p2, Lk7/l;->c:I

    .line 33
    invoke-virtual {p2, v0, v1}, Lk7/l;->d(Lk7/l;I)V

    .line 34
    iget v1, v0, Lk7/l;->c:I

    .line 35
    invoke-virtual {v0, p2, v1}, Lk7/l;->d(Lk7/l;I)V

    .line 36
    throw p1
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lp7/d$b;->p()V

    .line 2
    invoke-super {p0}, Lk7/r;->close()V

    return-void
.end method

.method public n(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lk7/n;->n(Ljava/lang/Exception;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lp7/d$b;->p()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/d$b;->h:Lp7/d$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lp7/d$i;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lp7/d$b;->h:Lp7/d$i;

    :cond_0
    return-void
.end method
