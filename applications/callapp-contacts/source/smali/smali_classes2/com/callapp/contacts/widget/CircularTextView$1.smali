.class Lcom/callapp/contacts/widget/CircularTextView$1;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/CircularTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/CircularTextView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/CircularTextView;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CircularTextView;->a(Lcom/callapp/contacts/widget/CircularTextView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/CircularTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/widget/CircularTextView;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CircularTextView;->b(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v1}, Lcom/callapp/contacts/widget/CircularTextView;->c(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CircularTextView;->b(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CircularTextView;->c(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v0

    .line 61
    :goto_0
    div-int/lit8 v1, v0, 0x2

    .line 63
    iget-object v2, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/widget/CircularTextView;->setHeight(I)V

    .line 64
    iget-object v2, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/widget/CircularTextView;->setWidth(I)V

    int-to-float v0, v1

    .line 66
    iget-object v2, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v2}, Lcom/callapp/contacts/widget/CircularTextView;->d(Lcom/callapp/contacts/widget/CircularTextView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v0, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 68
    iget-object v2, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v2}, Lcom/callapp/contacts/widget/CircularTextView;->e(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v2}, Lcom/callapp/contacts/widget/CircularTextView;->a(Lcom/callapp/contacts/widget/CircularTextView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v3}, Lcom/callapp/contacts/widget/CircularTextView;->f(Lcom/callapp/contacts/widget/CircularTextView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v4}, Lcom/callapp/contacts/widget/CircularTextView;->f(Lcom/callapp/contacts/widget/CircularTextView;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 73
    iget-object v3, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/CircularTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v5, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v5}, Lcom/callapp/contacts/widget/CircularTextView;->f(Lcom/callapp/contacts/widget/CircularTextView;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {p1, v3, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 75
    iget-object v1, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v1}, Lcom/callapp/contacts/widget/CircularTextView;->e(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v1

    if-lez v1, :cond_1

    .line 77
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v2}, Lcom/callapp/contacts/widget/CircularTextView;->c(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v3}, Lcom/callapp/contacts/widget/CircularTextView;->b(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 78
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v3}, Lcom/callapp/contacts/widget/CircularTextView;->e(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v3}, Lcom/callapp/contacts/widget/CircularTextView;->e(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 80
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 81
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x1

    .line 82
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v3, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v3}, Lcom/callapp/contacts/widget/CircularTextView;->g(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v3, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v3}, Lcom/callapp/contacts/widget/CircularTextView;->e(Lcom/callapp/contacts/widget/CircularTextView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/CircularTextView$1;->a:Lcom/callapp/contacts/widget/CircularTextView;

    invoke-static {v0, p1}, Lcom/callapp/contacts/widget/CircularTextView;->a(Lcom/callapp/contacts/widget/CircularTextView;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 98
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/CircularTextView$1;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
