.class Lcom/bytedance/sdk/adnet/b/b$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/b$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/b/b$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/b$b;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/b/c$a;

    .line 177
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/c$a;->a(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "file loader onDownloadProgress error"

    .line 179
    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/b/b$a;

    const/4 v2, 0x0

    .line 190
    :try_start_0
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/b/b$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "file loader onResponse error"

    .line 192
    invoke-static {v3, v5, v4}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v3, v3, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-interface {v1, v3, v4}, Lcom/bytedance/sdk/adnet/b/b$a;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "file loader putFile error"

    .line 197
    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/b/b$b;->f:Lcom/bytedance/sdk/adnet/b/b;

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/b/b;->a(Lcom/bytedance/sdk/adnet/b/b;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/b/c$a;

    .line 211
    :try_start_0
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/b/c$a;->b(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "file loader onErrorResponse error"

    .line 213
    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/b/b$b;->f:Lcom/bytedance/sdk/adnet/b/b;

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/b/b;->a(Lcom/bytedance/sdk/adnet/b/b;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b$1;->a:Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
