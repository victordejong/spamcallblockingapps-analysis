.class Lcom/bytedance/sdk/adnet/core/j$a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/ab;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/ab;)V
    .locals 1

    .line 288
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/j;->a(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 289
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/j$a;->a:Lcom/bytedance/sdk/a/b/ab;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/j$a;->a:Lcom/bytedance/sdk/a/b/ab;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ab;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
