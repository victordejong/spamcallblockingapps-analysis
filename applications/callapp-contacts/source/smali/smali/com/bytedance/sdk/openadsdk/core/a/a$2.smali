.class Lcom/bytedance/sdk/openadsdk/core/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/a/a;->onBannerAdLoad(Lcom/bytedance/sdk/openadsdk/TTBannerAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTBannerAd;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/a/a;Lcom/bytedance/sdk/openadsdk/TTBannerAd;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a$2;->b:Lcom/bytedance/sdk/openadsdk/core/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTBannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a$2;->b:Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTBannerAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;->onBannerAdLoad(Lcom/bytedance/sdk/openadsdk/TTBannerAd;)V

    return-void
.end method
