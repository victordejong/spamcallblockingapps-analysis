.class public abstract Lcom/bytedance/sdk/a/b/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/a/b/u;JLcom/bytedance/sdk/a/a/e;)Lcom/bytedance/sdk/a/b/ab;
    .locals 1

    const-string v0, "source == null"

    .line 223
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    new-instance v0, Lcom/bytedance/sdk/a/b/ab$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/a/b/ab$1;-><init>(Lcom/bytedance/sdk/a/b/u;JLcom/bytedance/sdk/a/a/e;)V

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/ab;
    .locals 3

    .line 214
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->b([B)Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    .line 215
    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/sdk/a/b/ab;->a(Lcom/bytedance/sdk/a/b/u;JLcom/bytedance/sdk/a/a/e;)Lcom/bytedance/sdk/a/b/ab;

    move-result-object p0

    return-object p0
.end method

.method private f()Ljava/nio/charset/Charset;
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->a()Lcom/bytedance/sdk/a/b/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v1, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/bytedance/sdk/a/b/u;
.end method

.method public abstract b()J
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->d()Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->f()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->d()Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract d()Lcom/bytedance/sdk/a/a/e;
.end method

.method public final e()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->d()Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/ab;->f()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Lcom/bytedance/sdk/a/a/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 177
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/e;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 180
    throw v1
.end method
