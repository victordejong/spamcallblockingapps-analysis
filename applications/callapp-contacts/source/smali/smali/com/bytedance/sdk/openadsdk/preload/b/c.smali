.class public Lcom/bytedance/sdk/openadsdk/preload/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/b/e;)Lcom/bytedance/sdk/openadsdk/preload/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/e;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TIN;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/c;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/b/e;Lcom/bytedance/sdk/openadsdk/preload/b/d;)Lcom/bytedance/sdk/openadsdk/preload/b/b;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/b/e;Lcom/bytedance/sdk/openadsdk/preload/b/d;)Lcom/bytedance/sdk/openadsdk/preload/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/e;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TIN;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/b/e$a;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/e$a;-><init>()V

    .line 25
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/b/i;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/i;-><init>(Ljava/util/List;ILcom/bytedance/sdk/openadsdk/preload/b/e;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V

    return-object v0

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "interceptors == null !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
