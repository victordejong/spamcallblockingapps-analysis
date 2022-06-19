.class Lcom/bytedance/sdk/openadsdk/core/a/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/a/i;->onTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/a/i;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/a/i;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/i$2;->a:Lcom/bytedance/sdk/openadsdk/core/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/i$2;->a:Lcom/bytedance/sdk/openadsdk/core/a/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/a/i;->a(Lcom/bytedance/sdk/openadsdk/core/a/i;)Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onTimeout()V

    return-void
.end method
