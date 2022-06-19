.class La/a$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements La/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a;->a(La/r;)La/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/r;

.field final synthetic b:La/a;


# direct methods
.method constructor <init>(La/a;La/r;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, La/a$1;->b:La/a;

    iput-object p2, p0, La/a$1;->a:La/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La/t;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, La/a$1;->b:La/a;

    return-object v0
.end method

.method public a_(La/c;J)V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 162
    iget-wide v0, p1, La/c;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, La/u;->a(JJJ)V

    move-wide v4, p2

    .line 164
    :goto_0
    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    .line 167
    iget-object v6, p1, La/c;->a:La/o;

    move-wide v0, v2

    :goto_1
    const-wide/32 v8, 0x10000

    cmp-long v7, v0, v8

    if-gez v7, :cond_0

    .line 168
    iget v7, v6, La/o;->c:I

    iget v8, v6, La/o;->b:I

    sub-int/2addr v7, v8

    .line 169
    int-to-long v8, v7

    add-long/2addr v0, v8

    .line 170
    cmp-long v7, v0, v4

    if-ltz v7, :cond_1

    move-wide v0, v4

    .line 177
    :cond_0
    const/4 v6, 0x0

    .line 178
    iget-object v7, p0, La/a$1;->b:La/a;

    invoke-virtual {v7}, La/a;->c()V

    .line 180
    :try_start_0
    iget-object v7, p0, La/a$1;->a:La/r;

    invoke-interface {v7, p1, v0, v1}, La/r;->a_(La/c;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    sub-long/2addr v4, v0

    .line 182
    const/4 v0, 0x1

    .line 186
    iget-object v1, p0, La/a$1;->b:La/a;

    invoke-virtual {v1, v0}, La/a;->a(Z)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v6, v6, La/o;->f:La/o;

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_1
    iget-object v1, p0, La/a$1;->b:La/a;

    invoke-virtual {v1, v0}, La/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catchall_0
    move-exception v0

    iget-object v1, p0, La/a$1;->b:La/a;

    invoke-virtual {v1, v6}, La/a;->a(Z)V

    throw v0

    .line 189
    :cond_2
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, La/a$1;->b:La/a;

    invoke-virtual {v0}, La/a;->c()V

    .line 208
    :try_start_0
    iget-object v0, p0, La/a$1;->a:La/r;

    invoke-interface {v0}, La/r;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, La/a$1;->b:La/a;

    invoke-virtual {v1, v0}, La/a;->a(Z)V

    .line 215
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :try_start_1
    iget-object v2, p0, La/a$1;->b:La/a;

    invoke-virtual {v2, v0}, La/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :catchall_0
    move-exception v0

    iget-object v2, p0, La/a$1;->b:La/a;

    invoke-virtual {v2, v1}, La/a;->a(Z)V

    throw v0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, La/a$1;->b:La/a;

    invoke-virtual {v0}, La/a;->c()V

    .line 195
    :try_start_0
    iget-object v0, p0, La/a$1;->a:La/r;

    invoke-interface {v0}, La/r;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v0, 0x1

    .line 200
    iget-object v1, p0, La/a$1;->b:La/a;

    invoke-virtual {v1, v0}, La/a;->a(Z)V

    .line 202
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    :try_start_1
    iget-object v2, p0, La/a$1;->b:La/a;

    invoke-virtual {v2, v0}, La/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :catchall_0
    move-exception v0

    iget-object v2, p0, La/a$1;->b:La/a;

    invoke-virtual {v2, v1}, La/a;->a(Z)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a$1;->a:La/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
