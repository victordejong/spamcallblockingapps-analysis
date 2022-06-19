.class Lcom/bytedance/sdk/openadsdk/core/d/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/a;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->d(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->d(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
