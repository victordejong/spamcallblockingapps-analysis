.class public final Lcom/google/api/client/a/u;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/api/client/a/s;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    new-instance p1, Lcom/google/api/client/a/s;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/api/client/a/s;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    iput-object p1, p0, Lcom/google/api/client/a/u;->a:Lcom/google/api/client/a/s;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/api/client/a/u;->a:Lcom/google/api/client/a/s;

    invoke-virtual {v0}, Lcom/google/api/client/a/s;->close()V

    .line 63
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public final write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/api/client/a/u;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 51
    iget-object v0, p0, Lcom/google/api/client/a/u;->a:Lcom/google/api/client/a/s;

    invoke-virtual {v0, p1}, Lcom/google/api/client/a/s;->write(I)V

    return-void
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/api/client/a/u;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 57
    iget-object v0, p0, Lcom/google/api/client/a/u;->a:Lcom/google/api/client/a/s;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/api/client/a/s;->write([BII)V

    return-void
.end method
