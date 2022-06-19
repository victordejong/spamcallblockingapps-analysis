.class final Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/animation/CallappAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Z

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(FJFFZLandroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->a:F

    iput-wide p2, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->b:J

    iput p4, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->c:F

    iput p5, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->d:F

    iput-boolean p6, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->e:Z

    iput-object p7, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->f:Landroid/view/View;

    iput-object p8, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->g:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 136
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    long-to-float p1, v1

    const/high16 v1, 0x43960000    # 300.0f

    div-float/2addr p1, v1

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 138
    iget v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->a:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->b:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float v0, v0, v1

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float v1, v0, v1

    .line 144
    :goto_0
    iget v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->c:F

    iget v2, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->d:F

    sub-float v3, v2, v0

    mul-float v3, v3, p1

    add-float/2addr v0, v3

    add-float/2addr v1, v0

    .line 146
    iget-boolean p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->e:Z

    if-eqz p1, :cond_1

    cmpl-float v0, v1, v2

    if-gtz v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    cmpg-float p1, v1, v2

    if-gez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 149
    iget-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->f:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 150
    iget-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 152
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$1;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    return-void
.end method
