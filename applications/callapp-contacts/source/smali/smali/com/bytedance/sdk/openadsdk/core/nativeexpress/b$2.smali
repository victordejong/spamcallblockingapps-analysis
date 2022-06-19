.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 196
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;Lcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onNativeExpressAdLoad(Ljava/util/List;)V

    goto :goto_1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    move-result-object v0

    const/16 v1, 0x67

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onError(ILjava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;I)V

    .line 205
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;->a(Ljava/util/List;)V

    goto :goto_2

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onError(ILjava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;I)V

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;->a()V

    .line 218
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)V

    return-void
.end method
