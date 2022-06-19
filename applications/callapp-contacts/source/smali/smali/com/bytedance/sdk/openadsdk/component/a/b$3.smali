.class Lcom/bytedance/sdk/openadsdk/component/a/b$3;
.super Lcom/bytedance/sdk/openadsdk/j/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/component/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/a/b$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a/b;Lcom/bytedance/sdk/openadsdk/component/a/b$a;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$3;->c:Lcom/bytedance/sdk/openadsdk/component/a/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/b$a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$3;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 141
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/b$a;

    if-eqz p2, :cond_0

    .line 142
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$3;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/a/a;-><init>(Landroid/graphics/Bitmap;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/a/b$a;->a(Lcom/bytedance/sdk/openadsdk/component/a/a;)V

    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/b$a;

    if-eqz p1, :cond_2

    .line 148
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/a/b$a;->a()V

    :cond_2
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 164
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/b$a;

    if-eqz p1, :cond_0

    .line 165
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/a/b$a;->a()V

    :cond_0
    return-void
.end method
