.class public final Lcom/google/api/client/a/t;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/api/client/a/s;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    new-instance p1, Lcom/google/api/client/a/s;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/api/client/a/s;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    iput-object p1, p0, Lcom/google/api/client/a/t;->a:Lcom/google/api/client/a/s;

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

    .line 66
    iget-object v0, p0, Lcom/google/api/client/a/t;->a:Lcom/google/api/client/a/s;

    invoke-virtual {v0}, Lcom/google/api/client/a/s;->close()V

    .line 67
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/google/api/client/a/t;->a:Lcom/google/api/client/a/s;

    invoke-virtual {v1, v0}, Lcom/google/api/client/a/s;->write(I)V

    return v0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/api/client/a/t;->a:Lcom/google/api/client/a/s;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/api/client/a/s;->write([BII)V

    :cond_0
    return p3
.end method
