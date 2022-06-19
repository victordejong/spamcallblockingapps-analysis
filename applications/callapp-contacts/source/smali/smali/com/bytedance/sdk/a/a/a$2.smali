.class Lcom/bytedance/sdk/a/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/a/s;

.field final synthetic b:Lcom/bytedance/sdk/a/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/a;Lcom/bytedance/sdk/a/a/s;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/a/a/a$2;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$2;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object p3, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    :try_start_1
    iget-object p2, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 265
    throw p1
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$2;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/s;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 276
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$2;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 279
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$2;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
