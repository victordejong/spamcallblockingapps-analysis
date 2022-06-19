.class public Lcom/bytedance/sdk/openadsdk/i/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/i/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/i/a/a;)V
    .locals 0

    .line 21
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/i/a/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/i/a/a;Z)V
    .locals 2

    .line 29
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/b/c$a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/i/a/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/i/b/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/b/c$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
