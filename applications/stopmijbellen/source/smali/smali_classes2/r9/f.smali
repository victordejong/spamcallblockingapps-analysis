.class public Lr9/f;
.super Laa/j;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Laa/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Laa/j;-><init>(Laa/x;)V

    return-void
.end method


# virtual methods
.method public E(Laa/f;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lr9/f;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3}, Laa/f;->j(J)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Laa/j;->a:Laa/x;

    invoke-interface {v0, p1, p2, p3}, Laa/x;->E(Laa/f;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lr9/f;->b:Z

    .line 5
    invoke-virtual {p0, p1}, Lr9/f;->d(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lr9/f;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0}, Laa/j;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lr9/f;->b:Z

    .line 4
    invoke-virtual {p0, v0}, Lr9/f;->d(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/io/IOException;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lr9/f;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Laa/j;->a:Laa/x;

    invoke-interface {v0}, Laa/x;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lr9/f;->b:Z

    .line 4
    invoke-virtual {p0, v0}, Lr9/f;->d(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
