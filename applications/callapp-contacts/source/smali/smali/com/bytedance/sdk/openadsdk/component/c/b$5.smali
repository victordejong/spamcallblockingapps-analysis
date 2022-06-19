.class Lcom/bytedance/sdk/openadsdk/component/c/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/c/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/c/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/c/b;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 177
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/c/b;->e(Lcom/bytedance/sdk/openadsdk/component/c/b;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->i(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->i(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/j;->a()V

    :cond_0
    return-void

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->i(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/j;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 185
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->i(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/j;->b()V

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

.method public a([B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
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

    .line 206
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->i(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->i(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/j;->b()V

    :cond_0
    return-void
.end method
