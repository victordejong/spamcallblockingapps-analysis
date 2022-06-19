.class public abstract Lcom/bytedance/sdk/openadsdk/preload/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Number;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()D
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()J
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()I
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Z
    .locals 1

    .line 48
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    return v0
.end method

.method public h()Z
    .locals 1

    .line 57
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    return v0
.end method

.method public i()Z
    .locals 1

    .line 66
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    return v0
.end method

.method public j()Z
    .locals 1

    .line 76
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/n;

    return v0
.end method

.method public k()Lcom/bytedance/sdk/openadsdk/preload/a/o;
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    move-object v0, p0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not a JSON Object: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()Lcom/bytedance/sdk/openadsdk/preload/a/i;
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    move-object v0, p0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not a JSON Array: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Lcom/bytedance/sdk/openadsdk/preload/a/q;
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    move-object v0, p0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not a JSON Primitive: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 314
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 315
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x1

    .line 316
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Z)V

    .line 317
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/l;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;Lcom/bytedance/sdk/openadsdk/preload/a/d/c;)V

    .line 318
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
