.class public final Lcom/google/api/client/a/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/api/client/a/ad;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/google/api/client/a/e;

    invoke-direct {v0}, Lcom/google/api/client/a/e;-><init>()V

    .line 108
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/api/client/a/ad;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v0}, Lcom/google/api/client/a/e;->close()V

    .line 112
    iget-wide v0, v0, Lcom/google/api/client/a/e;->a:J

    return-wide v0

    :catchall_0
    move-exception p0

    .line 110
    invoke-virtual {v0}, Lcom/google/api/client/a/e;->close()V

    .line 111
    throw p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 61
    invoke-static {p0, p1, v0}, Lcom/google/api/client/a/o;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/api/client/a/f;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 96
    :cond_1
    throw p1
.end method
