.class public final Lcom/bytedance/sdk/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/a/a/e;

.field final b:Lcom/bytedance/sdk/a/b/a/a/d;


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/c;->b:Lcom/bytedance/sdk/a/b/a/a/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/a/d;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/c;->b:Lcom/bytedance/sdk/a/b/a/a/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/a/d;->flush()V

    return-void
.end method
