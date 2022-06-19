.class final Lcom/google/api/client/http/e;
.super Ljava/io/FilterInputStream;
.source "ConsumingInputStream.java"


# instance fields
.field private d:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/api/client/http/e;->d:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/http/e;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/a;->c(Ljava/io/InputStream;)J

    .line 3
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v0, p0, Lcom/google/api/client/http/e;->d:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/google/api/client/http/e;->d:Z

    .line 5
    throw v1

    :cond_0
    :goto_0
    return-void
.end method
