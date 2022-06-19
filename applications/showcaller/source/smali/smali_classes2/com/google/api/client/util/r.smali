.class public Lcom/google/api/client/util/r;
.super Ljava/io/FilterOutputStream;
.source "LoggingOutputStream.java"


# instance fields
.field private final d:Lcom/google/api/client/util/p;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    new-instance p1, Lcom/google/api/client/util/p;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/api/client/util/p;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    iput-object p1, p0, Lcom/google/api/client/util/r;->d:Lcom/google/api/client/util/p;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/client/util/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/r;->d:Lcom/google/api/client/util/p;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/r;->d:Lcom/google/api/client/util/p;

    invoke-virtual {v0}, Lcom/google/api/client/util/p;->close()V

    .line 2
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v0, p0, Lcom/google/api/client/util/r;->d:Lcom/google/api/client/util/p;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/p;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-object v0, p0, Lcom/google/api/client/util/r;->d:Lcom/google/api/client/util/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/api/client/util/p;->write([BII)V

    return-void
.end method
