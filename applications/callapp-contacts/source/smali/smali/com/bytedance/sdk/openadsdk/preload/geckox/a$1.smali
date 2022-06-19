.class Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "all channel update finished"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start check update..."

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 234
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->a:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "gecko-debug-tag"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->b()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->b()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    move-result-object v2

    .line 238
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->b()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m()Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;Ljava/io/File;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 241
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->b(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    .line 242
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->c(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;

    move-result-object v9

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->c:Ljava/util/Map;

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->d:Ljava/util/Map;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->a:Ljava/lang/String;

    .line 241
    invoke-static/range {v6 .. v12}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/b;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->a:Ljava/lang/String;

    .line 243
    invoke-interface {v6, v7}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "update finished"

    aput-object v7, v1, v4

    aput-object v6, v1, v5

    .line 244
    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a()V

    :cond_1
    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a()V

    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 254
    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v6, "Gecko update failed:"

    .line 246
    invoke-static {v3, v6, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    if-eqz v1, :cond_3

    .line 249
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a()V

    :cond_3
    if-eqz v2, :cond_4

    .line 252
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a()V

    :cond_4
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 254
    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)V

    return-void

    .line 248
    :goto_2
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    if-eqz v6, :cond_5

    .line 249
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a()V

    :cond_5
    if-eqz v2, :cond_6

    .line 252
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a()V

    :cond_6
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 254
    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    throw v1
.end method
