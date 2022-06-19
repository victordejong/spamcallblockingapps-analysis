.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;
.super Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/c;
.source "SourceFile"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/c;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;->flush()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->a(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->a([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;->a([BII)I

    return-void
.end method
