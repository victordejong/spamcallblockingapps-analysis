.class public Lcom/bytedance/sdk/openadsdk/core/d;
.super Lcom/bytedance/sdk/openadsdk/core/e;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/e;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;
    .locals 2

    .line 17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/d;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/d;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/d;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/bytedance/sdk/openadsdk/core/e$c;
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v0

    return-object v0
.end method
