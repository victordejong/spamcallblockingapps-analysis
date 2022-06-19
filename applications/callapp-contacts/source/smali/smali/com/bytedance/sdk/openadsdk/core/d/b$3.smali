.class Lcom/bytedance/sdk/openadsdk/core/d/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/b;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/b;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 289
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/d/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/d/b;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    if-eqz p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/d/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/d/b;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;->onAdDismiss()V

    :cond_0
    return-void
.end method
