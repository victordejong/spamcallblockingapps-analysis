.class public Lcom/victor/loading/book/PageView;
.super Landroid/view/View;
.source ""


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Path;

.field private d:I

.field private e:I

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/victor/loading/book/PageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/victor/loading/book/PageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/victor/loading/book/PageView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Le/h/a/b;->book_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/victor/loading/book/PageView;->f:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Le/h/a/b;->book_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/victor/loading/book/PageView;->g:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/victor/loading/book/PageView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/victor/loading/book/PageView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Le/h/a/b;->page_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/victor/loading/book/PageView;->c:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/victor/loading/book/PageView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Le/h/a/a;->book_loading_book:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/victor/loading/book/PageView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/victor/loading/book/PageView;->g:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget-object v1, p0, Lcom/victor/loading/book/PageView;->c:Landroid/graphics/Path;

    iget v2, p0, Lcom/victor/loading/book/PageView;->d:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/victor/loading/book/PageView;->f:F

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/victor/loading/book/PageView;->c:Landroid/graphics/Path;

    iget v2, p0, Lcom/victor/loading/book/PageView;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/victor/loading/book/PageView;->f:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/victor/loading/book/PageView;->c:Landroid/graphics/Path;

    iget v2, p0, Lcom/victor/loading/book/PageView;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/victor/loading/book/PageView;->f:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget v4, p0, Lcom/victor/loading/book/PageView;->e:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    sub-float/2addr v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/victor/loading/book/PageView;->c:Landroid/graphics/Path;

    iget v2, p0, Lcom/victor/loading/book/PageView;->d:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/victor/loading/book/PageView;->e:I

    int-to-float v3, v3

    iget v4, p0, Lcom/victor/loading/book/PageView;->f:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/victor/loading/book/PageView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/victor/loading/book/PageView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/victor/loading/book/PageView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Le/h/a/a;->book_loading_page:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/victor/loading/book/PageView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/victor/loading/book/PageView;->g:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/victor/loading/book/PageView;->d:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/victor/loading/book/PageView;->f:F

    add-float v5, v2, v0

    int-to-float v1, v1

    sub-float/2addr v1, v2

    sub-float v6, v1, v0

    iget v1, p0, Lcom/victor/loading/book/PageView;->e:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    sub-float v7, v1, v0

    iget-object v8, p0, Lcom/victor/loading/book/PageView;->b:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/victor/loading/book/PageView;->d:I

    iput p2, p0, Lcom/victor/loading/book/PageView;->e:I

    return-void
.end method
