.class Lcom/bytedance/sdk/openadsdk/core/widget/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/b;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/b;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/b;Lcom/bytedance/sdk/openadsdk/core/widget/b$1;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/b;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 203
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->tt_privacy_accept_btn:I

    if-ne p1, v0, :cond_1

    .line 204
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/widget/b$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/widget/b$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b$c;->a()V

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->dismiss()V

    return-void

    .line 208
    :cond_1
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->tt_privacy_reject_btn:I

    if-ne p1, v0, :cond_3

    .line 209
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/widget/b$b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 210
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/widget/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b$b;->a()V

    .line 212
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->dismiss()V

    :cond_3
    return-void
.end method
