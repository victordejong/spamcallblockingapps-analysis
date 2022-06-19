.class Lcom/bytedance/sdk/openadsdk/j/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/j/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;II)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    .line 150
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->b:Ljava/lang/String;

    .line 151
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->c:I

    .line 152
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->d:I

    if-eqz p1, :cond_0

    const p3, 0x413c0901

    .line 155
    invoke-virtual {p1, p3, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x413c0901

    .line 210
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->c:I

    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .locals 0

    .line 178
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/e$a;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 183
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
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
    .locals 1

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 200
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->d:I

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/e$a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->a:Landroid/widget/ImageView;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/j/e$a;->d:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method
