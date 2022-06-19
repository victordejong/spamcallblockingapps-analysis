.class Lcom/bytedance/sdk/openadsdk/core/a/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/a/i;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/a/i;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/a/i;Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/i$3;->b:Lcom/bytedance/sdk/openadsdk/core/a/i;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/i$3;->a:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/i$3;->b:Lcom/bytedance/sdk/openadsdk/core/a/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/a/i;->a(Lcom/bytedance/sdk/openadsdk/core/a/i;)Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/i$3;->a:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V

    return-void
.end method
