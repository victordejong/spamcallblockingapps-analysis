.class Lcom/bytedance/sdk/openadsdk/core/v$10;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/v;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/a/i;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:I

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/v;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/i;Lcom/bytedance/sdk/openadsdk/AdSlot;I)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->d:Lcom/bytedance/sdk/openadsdk/core/v;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->a:Lcom/bytedance/sdk/openadsdk/core/a/i;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->c:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->d:Lcom/bytedance/sdk/openadsdk/core/v;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->a:Lcom/bytedance/sdk/openadsdk/core/a/i;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/core/v;Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->d:Lcom/bytedance/sdk/openadsdk/core/v;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/core/v;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 211
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->c:I

    .line 212
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/e;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    move v0, v1

    :cond_1
    :try_start_0
    const-string v1, "com.bytedance.sdk.openadsdk.TTC2Proxy"

    const-string v2, "load"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    .line 218
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-static {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 221
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->d:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/core/v;)Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/v$10;->a:Lcom/bytedance/sdk/openadsdk/core/a/i;

    aput-object v4, v3, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "TTAdNativeImpl"

    const-string v2, "splash component maybe not exist, pls check1"

    .line 224
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
