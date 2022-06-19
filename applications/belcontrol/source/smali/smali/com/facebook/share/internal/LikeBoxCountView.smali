.class public Lcom/facebook/share/internal/LikeBoxCountView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeBoxCountView$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lcom/facebook/share/internal/LikeBoxCountView$b;

.field public c:F

.field public d:F

.field public f:F

.field public g:Landroid/graphics/Paint;

.field public h:I

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$b;->a:Lcom/facebook/share/internal/LikeBoxCountView$b;

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$b;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;FFFF)V
    .locals 9

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->f:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    new-instance v3, Landroid/graphics/RectF;

    add-float v4, p2, v1

    add-float v5, p3, v1

    invoke-direct {v3, p2, p3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, -0x3ccc0000    # -180.0f

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3, v6, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$b;

    sget-object v6, Lcom/facebook/share/internal/LikeBoxCountView$b;->b:Lcom/facebook/share/internal/LikeBoxCountView$b;

    if-ne v3, v6, :cond_0

    sub-float v3, p4, p2

    iget v6, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    sub-float v6, v3, v6

    div-float/2addr v6, v2

    add-float/2addr v6, p2

    invoke-virtual {v0, v6, p3}, Landroid/graphics/Path;->lineTo(FF)V

    div-float v6, v3, v2

    add-float/2addr v6, p2

    iget v8, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    sub-float v8, p3, v8

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget v6, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    add-float/2addr v3, v6

    div-float/2addr v3, v2

    add-float/2addr v3, p2

    invoke-virtual {v0, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->f:F

    sub-float v3, p4, v3

    invoke-virtual {v0, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v3, Landroid/graphics/RectF;

    sub-float v6, p4, v1

    invoke-direct {v3, v6, p3, p4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v3, v5, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$b;

    sget-object v5, Lcom/facebook/share/internal/LikeBoxCountView$b;->c:Lcom/facebook/share/internal/LikeBoxCountView$b;

    if-ne v3, v5, :cond_1

    sub-float v3, p5, p3

    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    sub-float v5, v3, v5

    div-float/2addr v5, v2

    add-float/2addr v5, p3

    invoke-virtual {v0, p4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    add-float/2addr v5, p4

    div-float v8, v3, v2

    add-float/2addr v8, p3

    invoke-virtual {v0, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    add-float/2addr v3, v5

    div-float/2addr v3, v2

    add-float/2addr v3, p3

    invoke-virtual {v0, p4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->f:F

    sub-float v3, p5, v3

    invoke-virtual {v0, p4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v3, Landroid/graphics/RectF;

    sub-float v1, p5, v1

    invoke-direct {v3, v6, v1, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$b;

    sget-object v5, Lcom/facebook/share/internal/LikeBoxCountView$b;->d:Lcom/facebook/share/internal/LikeBoxCountView$b;

    if-ne v3, v5, :cond_2

    sub-float/2addr p4, p2

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    add-float/2addr v3, p4

    div-float/2addr v3, v2

    add-float/2addr v3, p2

    invoke-virtual {v0, v3, p5}, Landroid/graphics/Path;->lineTo(FF)V

    div-float v3, p4, v2

    add-float/2addr v3, p2

    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    add-float/2addr v5, p5

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    sub-float/2addr p4, v3

    div-float/2addr p4, v2

    add-float/2addr p4, p2

    invoke-virtual {v0, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    iget p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->f:F

    add-float/2addr p4, p2

    invoke-virtual {v0, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4, p2, v1, v4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p4, v7, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$b;

    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$b;->a:Lcom/facebook/share/internal/LikeBoxCountView$b;

    if-ne p4, v1, :cond_3

    sub-float/2addr p5, p3

    iget p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    add-float/2addr p4, p5

    div-float/2addr p4, v2

    add-float/2addr p4, p3

    invoke-virtual {v0, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    sub-float p4, p2, p4

    div-float v1, p5, v2

    add-float/2addr v1, p3

    invoke-virtual {v0, p4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    sub-float/2addr p5, p4

    div-float/2addr p5, v2

    add-float/2addr p5, p3

    invoke-virtual {v0, p2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    iget p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->f:F

    add-float/2addr p3, p4

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lql0;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lql0;->com_facebook_likeboxcountview_caret_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->d:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lql0;->com_facebook_likeboxcountview_border_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->f:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lpl0;->com_facebook_likeboxcountview_border_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lql0;->com_facebook_likeboxcountview_border_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->c(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$b;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$b;)V

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lql0;->com_facebook_likeboxcountview_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lpl0;->com_facebook_likeboxcountview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lql0;->com_facebook_likeboxcountview_text_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->h:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lql0;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->j:I

    return-void
.end method

.method public final d(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->h:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    add-int/2addr p3, v1

    add-int/2addr v1, p4

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lcom/facebook/share/internal/LikeBoxCountView$a;->a:[I

    iget-object v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    add-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    int-to-float v1, v1

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->c:F

    add-float/2addr v1, v4

    float-to-int v1, v1

    :goto_0
    int-to-float v6, v1

    int-to-float v7, v0

    int-to-float v8, v2

    int-to-float v9, v3

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/share/internal/LikeBoxCountView;->a(Landroid/graphics/Canvas;FFFF)V

    return-void
.end method

.method public setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$b;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->b:Lcom/facebook/share/internal/LikeBoxCountView$b;

    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->j:I

    invoke-virtual {p0, v1, v1, v1, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->d(IIII)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->j:I

    invoke-virtual {p0, v1, v1, p1, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->d(IIII)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->j:I

    invoke-virtual {p0, v1, p1, v1, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->d(IIII)V

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->j:I

    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->d(IIII)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
