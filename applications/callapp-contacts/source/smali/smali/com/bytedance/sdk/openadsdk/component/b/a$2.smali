.class Lcom/bytedance/sdk/openadsdk/component/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/b/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/b/a;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;Landroid/content/Context;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$2;->c:Lcom/bytedance/sdk/openadsdk/component/b/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
    .locals 5

    .line 98
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object p1

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 102
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ad()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/b/b;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$2;->b:Landroid/content/Context;

    const/16 v4, 0x9

    invoke-direct {v2, v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/component/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->d(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result v2

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/h/e;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h/e;->A()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    new-instance v2, Lcom/bytedance/sdk/openadsdk/k/f/b;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/k/f/b;-><init>()V

    .line 114
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/o;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/f/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/f/b;

    move-result-object v2

    const v3, 0x7d000

    .line 115
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/k/f/b;->a(I)Lcom/bytedance/sdk/openadsdk/k/f/b;

    move-result-object v2

    .line 116
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/k/f/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/f/b;

    move-result-object v1

    .line 118
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/e/c;->a(Lcom/bytedance/sdk/openadsdk/k/f/b;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;->onDrawFeedAdLoad(Ljava/util/List;)V

    return-void

    .line 126
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;->onError(ILjava/lang/String;)V

    return-void

    .line 129
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/a$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method
