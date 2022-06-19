.class public abstract Lcom/bytedance/sdk/openadsdk/preload/b/j;
.super Lcom/bytedance/sdk/openadsdk/preload/b/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/b/l<",
        "TIN;TOUT;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TOUT;>;TIN;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TOUT;>;TIN;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TOUT;>;TIN;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/b/m;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/m;-><init>(Lcom/bytedance/sdk/openadsdk/preload/b/b;)V

    invoke-virtual {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/j;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/j;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/j;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/j;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    :goto_0
    if-eqz v0, :cond_1

    .line 17
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a:Ljava/util/List;

    .line 19
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/b/i;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/preload/b/i;->a:Lcom/bytedance/sdk/openadsdk/preload/b/e;

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/c;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/b/e;Lcom/bytedance/sdk/openadsdk/preload/b/d;)Lcom/bytedance/sdk/openadsdk/preload/b/b;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 20
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/j;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 23
    :cond_0
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/preload/b/i$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/m;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/m;-><init>(Lcom/bytedance/sdk/openadsdk/preload/b/b;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/b/j;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, p2, v0, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/j;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/j;->d:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/j;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/j;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/b/i$a;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/b/m;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/m;-><init>(Lcom/bytedance/sdk/openadsdk/preload/b/b;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/b/j;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, p2, v0, v2}, Lcom/bytedance/sdk/openadsdk/preload/b/j;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/j;->d:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/j;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/j;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "can not found branch\uff0cbranch name is\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/j;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
