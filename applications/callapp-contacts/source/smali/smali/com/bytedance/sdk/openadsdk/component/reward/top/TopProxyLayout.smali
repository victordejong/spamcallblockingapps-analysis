.class public Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/a<",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 36
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    .line 72
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 73
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 79
    :cond_0
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public a(ZLcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;
    .locals 2

    .line 52
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->a(ZLcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    move-result-object p1

    .line 53
    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz p2, :cond_1

    .line 54
    move-object p2, p1

    check-cast p2, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 63
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 64
    check-cast p2, Landroid/view/ViewGroup;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    return-object p0

    :cond_1
    const-string p1, "TopProxyLayout"

    const-string p2, "view not implements ITopLayout interface"

    .line 57
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->c()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/b;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/b;)V

    :cond_0
    return-void
.end method

.method public setShowCountDown(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowCountDown(Z)V

    :cond_0
    return-void
.end method

.method public setShowDislike(Z)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowDislike(Z)V

    :cond_0
    return-void
.end method

.method public setShowSkip(Z)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowSkip(Z)V

    :cond_0
    return-void
.end method

.method public setShowSound(Z)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowSound(Z)V

    :cond_0
    return-void
.end method

.method public setSkipEnable(Z)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setSkipEnable(Z)V

    :cond_0
    return-void
.end method

.method public setSoundMute(Z)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setSoundMute(Z)V

    :cond_0
    return-void
.end method
