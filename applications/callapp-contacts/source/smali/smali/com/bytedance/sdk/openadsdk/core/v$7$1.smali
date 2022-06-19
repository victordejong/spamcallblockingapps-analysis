.class Lcom/bytedance/sdk/openadsdk/core/v$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/v$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/v$7;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/v$7;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v$7$1;->a:Lcom/bytedance/sdk/openadsdk/core/v$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v$7$1;->a:Lcom/bytedance/sdk/openadsdk/core/v$7;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/v$7;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
    .locals 5

    .line 119
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object p1

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 123
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ad()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/v$7$1$1;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/v$7$1;->a:Lcom/bytedance/sdk/openadsdk/core/v$7;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/v$7;->c:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/core/v;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/v$7$1;->a:Lcom/bytedance/sdk/openadsdk/core/v$7;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/v$7;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v4

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/v$7$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/v$7$1;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v$7$1;->a:Lcom/bytedance/sdk/openadsdk/core/v$7;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/v$7;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onNativeAdLoad(Ljava/util/List;)V

    return-void

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v$7$1;->a:Lcom/bytedance/sdk/openadsdk/core/v$7;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/v$7;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onError(ILjava/lang/String;)V

    return-void

    .line 134
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v$7$1;->a:Lcom/bytedance/sdk/openadsdk/core/v$7;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/v$7;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method
