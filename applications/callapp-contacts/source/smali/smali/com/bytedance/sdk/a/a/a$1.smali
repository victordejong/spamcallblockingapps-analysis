.class Lcom/bytedance/sdk/a/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/a/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/a/r;

.field final synthetic b:Lcom/bytedance/sdk/a/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/a;Lcom/bytedance/sdk/a/a/r;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/a/t;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/u;->a(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    .line 183
    iget-object v2, p1, Lcom/bytedance/sdk/a/a/c;->a:Lcom/bytedance/sdk/a/a/o;

    :goto_1
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    .line 184
    iget v3, v2, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, v2, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_0

    move-wide v0, p2

    goto :goto_2

    .line 183
    :cond_0
    iget-object v2, v2, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    goto :goto_1

    .line 194
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v2, p1, v0, v1}, Lcom/bytedance/sdk/a/a/r;->a_(Lcom/bytedance/sdk/a/a/c;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr p2, v0

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 200
    :try_start_1
    iget-object p2, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :goto_3
    iget-object p2, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 203
    throw p1

    :cond_2
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 232
    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a;->a()V

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/a/a;->a(Z)V

    .line 218
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/a$1;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
