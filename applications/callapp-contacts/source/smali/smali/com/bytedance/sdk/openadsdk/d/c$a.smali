.class public Lcom/bytedance/sdk/openadsdk/d/c$a;
.super Lcom/bytedance/sdk/openadsdk/d/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/d/c<",
        "Lcom/bytedance/sdk/openadsdk/d/a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/d/c$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/c;-><init>()V

    return-void
.end method

.method public static e()Lcom/bytedance/sdk/openadsdk/d/c$a;
    .locals 2

    .line 87
    sget-object v0, Lcom/bytedance/sdk/openadsdk/d/c$a;->a:Lcom/bytedance/sdk/openadsdk/d/c$a;

    if-nez v0, :cond_1

    .line 88
    const-class v0, Lcom/bytedance/sdk/openadsdk/d/c$a;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/d/c$a;->a:Lcom/bytedance/sdk/openadsdk/d/c$a;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/c$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/d/c$a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/d/c$a;->a:Lcom/bytedance/sdk/openadsdk/d/c$a;

    .line 92
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 94
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/d/c$a;->a:Lcom/bytedance/sdk/openadsdk/d/c$a;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 0

    monitor-enter p0

    .line 104
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/d/a;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/d/j;)V
    .locals 0

    .line 83
    check-cast p1, Lcom/bytedance/sdk/openadsdk/d/a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/d/c$a;->a(Lcom/bytedance/sdk/openadsdk/d/a;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
