.class public abstract Lcom/bytedance/sdk/openadsdk/core/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:J

.field protected w:J

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;IIII)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->r:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->s:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->t:I

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->u:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/b/c;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->t:I

    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->u:I

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->w:J

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->r:I

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->s:I

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->v:J

    .line 38
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->x:I

    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->y:I

    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->z:I

    :goto_0
    return v0
.end method
