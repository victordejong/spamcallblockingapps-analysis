.class Lcom/bytedance/sdk/openadsdk/core/a/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/a/g;->onNativeExpressAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/a/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/a/g;Ljava/util/List;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/g$2;->b:Lcom/bytedance/sdk/openadsdk/core/a/g;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/g$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/g$2;->b:Lcom/bytedance/sdk/openadsdk/core/a/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/a/g;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/g$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onNativeExpressAdLoad(Ljava/util/List;)V

    return-void
.end method
