.class public Lcom/bytedance/sdk/openadsdk/core/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/i;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/a/i;)Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/a/i;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    return-object p0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/i;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 27
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/i;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    return-void

    .line 30
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/i$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/a/i$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/a/i;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/i;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/i;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V

    return-void

    .line 66
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/i$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/a/i$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/a/i;Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTimeout()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/i;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/i;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onTimeout()V

    return-void

    .line 48
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/i$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/a/i$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/a/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
