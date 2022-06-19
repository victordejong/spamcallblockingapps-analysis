.class public final Lcom/google/api/client/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/a/ad;


# instance fields
.field private final a:Lcom/google/api/client/a/ad;

.field private final b:I

.field private final c:Ljava/util/logging/Level;

.field private final d:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Lcom/google/api/client/a/ad;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/api/client/a/v;->a:Lcom/google/api/client/a/ad;

    .line 54
    iput-object p2, p0, Lcom/google/api/client/a/v;->d:Ljava/util/logging/Logger;

    .line 55
    iput-object p3, p0, Lcom/google/api/client/a/v;->c:Ljava/util/logging/Level;

    .line 56
    iput p4, p0, Lcom/google/api/client/a/v;->b:I

    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/google/api/client/a/u;

    iget-object v1, p0, Lcom/google/api/client/a/v;->d:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/google/api/client/a/v;->c:Ljava/util/logging/Level;

    iget v3, p0, Lcom/google/api/client/a/v;->b:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/api/client/a/u;-><init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/google/api/client/a/v;->a:Lcom/google/api/client/a/ad;

    invoke-interface {v1, v0}, Lcom/google/api/client/a/ad;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    iget-object v0, v0, Lcom/google/api/client/a/u;->a:Lcom/google/api/client/a/s;

    .line 66
    invoke-virtual {v0}, Lcom/google/api/client/a/s;->close()V

    .line 68
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :catchall_0
    move-exception p1

    .line 2068
    iget-object v0, v0, Lcom/google/api/client/a/u;->a:Lcom/google/api/client/a/s;

    .line 66
    invoke-virtual {v0}, Lcom/google/api/client/a/s;->close()V

    .line 67
    throw p1
.end method
