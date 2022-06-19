.class Lcom/bytedance/sdk/openadsdk/core/v$7;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/v;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/v;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v$7;->c:Lcom/bytedance/sdk/openadsdk/core/v;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/v$7;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/v$7;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v$7;->c:Lcom/bytedance/sdk/openadsdk/core/v;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/v$7;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/core/v;Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v$7;->c:Lcom/bytedance/sdk/openadsdk/core/v;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/v$7;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->c(Lcom/bytedance/sdk/openadsdk/core/v;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v$7;->c:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/v;->b(Lcom/bytedance/sdk/openadsdk/core/v;)Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/v$7;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/v$7$1;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/v$7$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/v$7;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void
.end method
