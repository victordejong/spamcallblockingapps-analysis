.class Lcom/rey/material/app/Dialog$e;
.super Landroidx/cardview/widget/CardView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private k:Landroid/graphics/Paint;

.field private l:F

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field final synthetic s:Lcom/rey/material/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/rey/material/app/Dialog;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-direct {p0, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/rey/material/app/Dialog$e;->l:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rey/material/app/Dialog$e;->m:Z

    iput-boolean p1, p0, Lcom/rey/material/app/Dialog$e;->r:Z

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/rey/material/app/Dialog$e;->k:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/rey/material/app/Dialog$e;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    iget v3, p0, Lcom/rey/material/app/Dialog$e;->l:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/rey/material/app/Dialog$e;->l:F

    iget-object v6, p0, Lcom/rey/material/app/Dialog$e;->k:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public h(I)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/rey/material/app/Dialog$e;->i(IIII)V

    return-void
.end method

.method public i(IIII)V
    .locals 0

    iput p1, p0, Lcom/rey/material/app/Dialog$e;->n:I

    iput p2, p0, Lcom/rey/material/app/Dialog$e;->o:I

    iput p3, p0, Lcom/rey/material/app/Dialog$e;->p:I

    iput p4, p0, Lcom/rey/material/app/Dialog$e;->q:I

    return-void
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public k(I)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->k:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public l(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/rey/material/app/Dialog$e;->m:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/rey/material/app/Dialog$e;->m:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    const/4 p2, 0x0

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/rey/material/app/Dialog$e;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p4, v1

    iget-object v2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v2, v2, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v2, v2, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, p3, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    :cond_1
    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v1, v0, Lcom/rey/material/app/Dialog;->r:I

    sub-int/2addr p5, v1

    iget v1, v0, Lcom/rey/material/app/Dialog;->o:I

    iget v2, v0, Lcom/rey/material/app/Dialog;->n:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Lcom/rey/material/app/Dialog;->d(Lcom/rey/material/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object p2, p2, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, p2, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    iget p2, p2, Lcom/rey/material/app/Dialog;->p:I

    sub-int p2, p4, p2

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p2, v2

    iget-object v2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v3, v2, Lcom/rey/material/app/Dialog;->o:I

    sub-int v3, p5, v3

    add-int/2addr v3, v1

    iget v2, v2, Lcom/rey/material/app/Dialog;->p:I

    sub-int v2, p4, v2

    sub-int v4, p5, v1

    invoke-virtual {v0, p2, v3, v2, v4}, Landroid/widget/Button;->layout(IIII)V

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget p2, p2, Lcom/rey/material/app/Dialog;->o:I

    sub-int/2addr p5, p2

    :cond_2
    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object p2, p2, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, p2, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    iget p2, p2, Lcom/rey/material/app/Dialog;->p:I

    sub-int p2, p4, p2

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p2, v2

    iget-object v2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v3, v2, Lcom/rey/material/app/Dialog;->o:I

    sub-int v3, p5, v3

    add-int/2addr v3, v1

    iget v2, v2, Lcom/rey/material/app/Dialog;->p:I

    sub-int v2, p4, v2

    sub-int v4, p5, v1

    invoke-virtual {v0, p2, v3, v2, v4}, Landroid/widget/Button;->layout(IIII)V

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget p2, p2, Lcom/rey/material/app/Dialog;->o:I

    sub-int/2addr p5, p2

    :cond_3
    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object p2, p2, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, p2, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    iget p2, p2, Lcom/rey/material/app/Dialog;->p:I

    sub-int p2, p4, p2

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p2, v2

    iget-object v2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v3, v2, Lcom/rey/material/app/Dialog;->o:I

    sub-int v3, p5, v3

    add-int/2addr v3, v1

    iget v2, v2, Lcom/rey/material/app/Dialog;->p:I

    sub-int v2, p4, v2

    sub-int v1, p5, v1

    invoke-virtual {v0, p2, v3, v2, v1}, Landroid/widget/Button;->layout(IIII)V

    :goto_1
    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget p2, p2, Lcom/rey/material/app/Dialog;->o:I

    sub-int/2addr p5, p2

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v2, v0, Lcom/rey/material/app/Dialog;->p:I

    add-int v3, p1, v2

    sub-int v2, p4, v2

    iget v4, v0, Lcom/rey/material/app/Dialog;->o:I

    sub-int v4, p5, v4

    add-int/2addr v4, v1

    sub-int v1, p5, v1

    iget-boolean v5, p0, Lcom/rey/material/app/Dialog$e;->r:Z

    const/4 v6, 0x1

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v5, :cond_7

    if-nez v0, :cond_5

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object p2, p2, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p2, v3, v4, v0, v1}, Landroid/widget/Button;->layout(IIII)V

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object p2, p2, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v0, v0, Lcom/rey/material/app/Dialog;->r:I

    add-int/2addr p2, v0

    add-int/2addr v3, p2

    const/4 p2, 0x1

    :cond_5
    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object p2, p2, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p2, v3, v4, v0, v1}, Landroid/widget/Button;->layout(IIII)V

    const/4 p2, 0x1

    :cond_6
    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object p2, p2, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p2, v0, v4, v2, v1}, Landroid/widget/Button;->layout(IIII)V

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object p2, p2, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p2, v0, v4, v2, v1}, Landroid/widget/Button;->layout(IIII)V

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object p2, p2, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v0, v0, Lcom/rey/material/app/Dialog;->r:I

    add-int/2addr p2, v0

    sub-int/2addr v2, p2

    const/4 p2, 0x1

    :cond_8
    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object p2, p2, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p2, v0, v4, v2, v1}, Landroid/widget/Button;->layout(IIII)V

    const/4 p2, 0x1

    :cond_9
    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object p2, p2, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p2, v3, v4, v0, v1}, Landroid/widget/Button;->layout(IIII)V

    goto :goto_2

    :cond_a
    move v6, p2

    :goto_2
    if-eqz v6, :cond_b

    goto/16 :goto_1

    :cond_b
    :goto_3
    int-to-float p2, p5

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->k:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/rey/material/app/Dialog$e;->l:F

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {p2}, Lcom/rey/material/app/Dialog;->c(Lcom/rey/material/app/Dialog;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {p2}, Lcom/rey/material/app/Dialog;->c(Lcom/rey/material/app/Dialog;)Landroid/view/View;

    move-result-object p2

    iget v0, p0, Lcom/rey/material/app/Dialog$e;->n:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/rey/material/app/Dialog$e;->o:I

    add-int/2addr p3, v0

    iget v0, p0, Lcom/rey/material/app/Dialog$e;->p:I

    sub-int/2addr p4, v0

    iget v0, p0, Lcom/rey/material/app/Dialog$e;->q:I

    sub-int/2addr p5, v0

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-object v3, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v4, v3, Lcom/rey/material/app/Dialog;->s:I

    invoke-static {v3}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v5, v4, Lcom/rey/material/app/Dialog;->s:I

    invoke-static {v4}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v6, v5, Lcom/rey/material/app/Dialog;->t:I

    invoke-static {v5}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v7, v6, Lcom/rey/material/app/Dialog;->t:I

    invoke-static {v6}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    iget-object v3, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v3}, Lcom/rey/material/app/Dialog;->j(Lcom/rey/material/app/Dialog;)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v3}, Lcom/rey/material/app/Dialog;->j(Lcom/rey/material/app/Dialog;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    iget-object v3, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v3}, Lcom/rey/material/app/Dialog;->k(Lcom/rey/material/app/Dialog;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v3}, Lcom/rey/material/app/Dialog;->k(Lcom/rey/material/app/Dialog;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_1
    iget-object v3, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v3}, Lcom/rey/material/app/Dialog;->l(Lcom/rey/material/app/Dialog;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v3}, Lcom/rey/material/app/Dialog;->l(Lcom/rey/material/app/Dialog;)I

    move-result v3

    :goto_0
    iget-object v5, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v5}, Lcom/rey/material/app/Dialog;->m(Lcom/rey/material/app/Dialog;)I

    move-result v5

    if-ne v5, v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v4}, Lcom/rey/material/app/Dialog;->m(Lcom/rey/material/app/Dialog;)I

    move-result v4

    :goto_1
    iget-object v5, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v5, v5, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/high16 v6, -0x80000000

    const/4 v7, -0x2

    const/4 v8, 0x0

    if-nez v5, :cond_5

    if-ne v3, v7, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v10, v10, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v10, v5, v9}, Landroid/widget/TextView;->measure(II)V

    iget-object v5, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v5, v5, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget-object v9, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v9, v9, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v10}, Lcom/rey/material/app/Dialog;->c(Lcom/rey/material/app/Dialog;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_7

    if-ne v3, v7, :cond_6

    move v10, v1

    goto :goto_4

    :cond_6
    move v10, v3

    :goto_4
    iget v11, v0, Lcom/rey/material/app/Dialog$e;->n:I

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/rey/material/app/Dialog$e;->p:I

    sub-int/2addr v10, v11

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, v0, Lcom/rey/material/app/Dialog$e;->o:I

    sub-int v11, v2, v11

    iget v12, v0, Lcom/rey/material/app/Dialog$e;->q:I

    sub-int/2addr v11, v12

    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v11, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v11}, Lcom/rey/material/app/Dialog;->c(Lcom/rey/material/app/Dialog;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v10, v6}, Landroid/view/View;->measure(II)V

    iget-object v6, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v6}, Lcom/rey/material/app/Dialog;->c(Lcom/rey/material/app/Dialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v10, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v10}, Lcom/rey/material/app/Dialog;->c(Lcom/rey/material/app/Dialog;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_5
    iget-object v11, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v11, v11, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getVisibility()I

    move-result v11

    const/high16 v13, 0x40000000    # 2.0f

    if-nez v11, :cond_9

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget-object v14, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v14, v14, Lcom/rey/material/app/Dialog;->n:I

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    iget-object v15, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v15, v15, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v15, v11, v14}, Landroid/widget/Button;->measure(II)V

    iget-object v11, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v11, v11, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v11

    iget-object v15, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v12, v15, Lcom/rey/material/app/Dialog;->q:I

    if-ge v11, v12, :cond_8

    iget-object v11, v15, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v11, v12, v14}, Landroid/widget/Button;->measure(II)V

    iget-object v11, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v11, v11, Lcom/rey/material/app/Dialog;->q:I

    :cond_8
    const/4 v12, 0x1

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_6
    iget-object v14, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v14, v14, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v14}, Landroid/widget/Button;->getVisibility()I

    move-result v14

    if-nez v14, :cond_b

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    iget-object v15, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v15, v15, Lcom/rey/material/app/Dialog;->n:I

    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    iget-object v7, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v7, v7, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v7, v14, v15}, Landroid/widget/Button;->measure(II)V

    iget-object v7, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v7, v7, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v7

    iget-object v14, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v8, v14, Lcom/rey/material/app/Dialog;->q:I

    if-ge v7, v8, :cond_a

    iget-object v7, v14, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v15}, Landroid/widget/Button;->measure(II)V

    iget-object v7, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v7, v7, Lcom/rey/material/app/Dialog;->q:I

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    iget-object v8, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v8, v8, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x0

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    iget-object v8, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v8, v8, Lcom/rey/material/app/Dialog;->n:I

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v15, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v15, v15, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v15, v14, v8}, Landroid/widget/Button;->measure(II)V

    iget-object v14, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v14, v14, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v14}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v14

    iget-object v15, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v13, v15, Lcom/rey/material/app/Dialog;->q:I

    if-ge v14, v13, :cond_c

    iget-object v14, v15, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v14, v13, v8}, Landroid/widget/Button;->measure(II)V

    iget-object v8, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v8, v8, Lcom/rey/material/app/Dialog;->q:I

    goto :goto_8

    :cond_c
    move v8, v14

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    :goto_9
    add-int/2addr v11, v7

    add-int/2addr v11, v8

    iget-object v7, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v8, v7, Lcom/rey/material/app/Dialog;->p:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v11, v8

    iget v7, v7, Lcom/rey/material/app/Dialog;->r:I

    add-int/lit8 v8, v12, -0x1

    const/4 v13, 0x0

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    mul-int v7, v7, v8

    add-int/2addr v11, v7

    const/4 v7, -0x2

    if-ne v3, v7, :cond_e

    iget v3, v0, Lcom/rey/material/app/Dialog$e;->n:I

    add-int/2addr v6, v3

    iget v3, v0, Lcom/rey/material/app/Dialog$e;->p:I

    add-int/2addr v6, v3

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_e
    iget-object v1, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    if-le v11, v3, :cond_f

    const/4 v5, 0x1

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    :goto_a
    invoke-static {v1, v5}, Lcom/rey/material/app/Dialog;->e(Lcom/rey/material/app/Dialog;Z)Z

    iget-object v1, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v5, v1, Lcom/rey/material/app/Dialog;->r:I

    add-int/2addr v9, v5

    iget v5, v0, Lcom/rey/material/app/Dialog$e;->o:I

    add-int/2addr v9, v5

    iget v5, v0, Lcom/rey/material/app/Dialog$e;->q:I

    add-int/2addr v9, v5

    invoke-static {v1}, Lcom/rey/material/app/Dialog;->d(Lcom/rey/material/app/Dialog;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v1, v1, Lcom/rey/material/app/Dialog;->o:I

    mul-int v1, v1, v12

    add-int/2addr v9, v1

    :goto_b
    const/4 v1, -0x2

    goto :goto_d

    :cond_10
    if-lez v12, :cond_11

    iget-object v1, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget v8, v1, Lcom/rey/material/app/Dialog;->o:I

    goto :goto_c

    :cond_11
    const/4 v8, 0x0

    :goto_c
    add-int/2addr v9, v8

    goto :goto_b

    :goto_d
    if-ne v4, v1, :cond_12

    add-int/2addr v10, v9

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_12
    iget-object v1, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v1}, Lcom/rey/material/app/Dialog;->c(Lcom/rey/material/app/Dialog;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    invoke-static {v1}, Lcom/rey/material/app/Dialog;->c(Lcom/rey/material/app/Dialog;)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Lcom/rey/material/app/Dialog$e;->n:I

    sub-int v2, v3, v2

    iget v5, v0, Lcom/rey/material/app/Dialog$e;->p:I

    sub-int/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v6, v4, v9

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/rey/material/app/Dialog$e;->r:Z

    if-eq p1, v0, :cond_3

    iput-boolean v0, p0, Lcom/rey/material/app/Dialog$e;->r:Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    :goto_1
    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextDirection(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextDirection(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog$e;->s:Lcom/rey/material/app/Dialog;

    iget-object v0, v0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextDirection(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_3
    return-void
.end method
