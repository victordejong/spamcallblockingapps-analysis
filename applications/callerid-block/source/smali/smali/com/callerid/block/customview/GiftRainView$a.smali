.class Lcom/callerid/block/customview/GiftRainView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/customview/GiftRainView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/customview/GiftRainView;


# direct methods
.method constructor <init>(Lcom/callerid/block/customview/GiftRainView;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/GiftRainView$a;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/callerid/block/customview/GiftRainView$a;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-static {p1}, Lcom/callerid/block/customview/GiftRainView;->c(Lcom/callerid/block/customview/GiftRainView;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float p1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$a;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-static {v2, v0, v1}, Lcom/callerid/block/customview/GiftRainView;->d(Lcom/callerid/block/customview/GiftRainView;J)J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$a;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-static {v2}, Lcom/callerid/block/customview/GiftRainView;->e(Lcom/callerid/block/customview/GiftRainView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$a;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-static {v2}, Lcom/callerid/block/customview/GiftRainView;->e(Lcom/callerid/block/customview/GiftRainView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/customview/GiftRainView$d;

    invoke-static {v2}, Lcom/callerid/block/customview/GiftRainView$d;->g(Lcom/callerid/block/customview/GiftRainView$d;)F

    move-result v3

    invoke-static {v2}, Lcom/callerid/block/customview/GiftRainView$d;->i(Lcom/callerid/block/customview/GiftRainView$d;)F

    move-result v4

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/callerid/block/customview/GiftRainView$d;->h(Lcom/callerid/block/customview/GiftRainView$d;F)F

    invoke-static {v2}, Lcom/callerid/block/customview/GiftRainView$d;->g(Lcom/callerid/block/customview/GiftRainView$d;)F

    move-result v3

    iget-object v4, p0, Lcom/callerid/block/customview/GiftRainView$a;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/callerid/block/customview/GiftRainView$a;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-static {v3}, Lcom/callerid/block/customview/GiftRainView;->f(Lcom/callerid/block/customview/GiftRainView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/callerid/block/customview/GiftRainView$a;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-static {v3}, Lcom/callerid/block/customview/GiftRainView;->e(Lcom/callerid/block/customview/GiftRainView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/callerid/block/customview/GiftRainView$d;->f(Lcom/callerid/block/customview/GiftRainView$d;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/callerid/block/customview/GiftRainView$d;->h(Lcom/callerid/block/customview/GiftRainView$d;F)F

    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/callerid/block/customview/GiftRainView$d;->j(Lcom/callerid/block/customview/GiftRainView$d;)F

    move-result v3

    invoke-static {v2}, Lcom/callerid/block/customview/GiftRainView$d;->l(Lcom/callerid/block/customview/GiftRainView$d;)F

    move-result v4

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/callerid/block/customview/GiftRainView$d;->k(Lcom/callerid/block/customview/GiftRainView$d;F)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/customview/GiftRainView$a;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
