.class public Lcom/bytedance/sdk/openadsdk/d/c$b;
.super Lcom/bytedance/sdk/openadsdk/d/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/d/c<",
        "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/d/c$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/c;-><init>()V

    return-void
.end method

.method public static e()Lcom/bytedance/sdk/openadsdk/d/c$b;
    .locals 2

    .line 121
    sget-object v0, Lcom/bytedance/sdk/openadsdk/d/c$b;->a:Lcom/bytedance/sdk/openadsdk/d/c$b;

    if-nez v0, :cond_1

    .line 122
    const-class v0, Lcom/bytedance/sdk/openadsdk/d/c$b;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/d/c$b;->a:Lcom/bytedance/sdk/openadsdk/d/c$b;

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/c$b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/d/c$b;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/d/c$b;->a:Lcom/bytedance/sdk/openadsdk/d/c$b;

    .line 126
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 128
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/d/c$b;->a:Lcom/bytedance/sdk/openadsdk/d/c$b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 0

    monitor-enter p0

    .line 138
    monitor-exit p0

    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/d/j;)V
    .locals 0

    .line 117
    check-cast p1, Lcom/bytedance/sdk/openadsdk/i/b/c$a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/d/c$b;->a(Lcom/bytedance/sdk/openadsdk/i/b/c$a;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/i/b/c$a;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
