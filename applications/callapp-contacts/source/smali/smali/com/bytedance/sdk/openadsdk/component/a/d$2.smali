.class Lcom/bytedance/sdk/openadsdk/component/a/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a/d;->b(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/a/c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a/d;Lcom/bytedance/sdk/openadsdk/component/a/c;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/d$2;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/a/d;->a(Lcom/bytedance/sdk/openadsdk/component/a/d;Z)Z

    .line 217
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/a/d;->b(Lcom/bytedance/sdk/openadsdk/component/a/d;)V

    .line 218
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/d$2;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/a/d;->a(Lcom/bytedance/sdk/openadsdk/component/a/d;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    :cond_0
    const-string p1, "TTBannerAd"

    const-string v0, "SLIDE END"

    .line 222
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TTBannerAd"

    const-string v0, "SLIDE START"

    .line 211
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
