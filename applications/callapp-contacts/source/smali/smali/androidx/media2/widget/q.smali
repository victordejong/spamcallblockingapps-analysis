.class Landroidx/media2/widget/q;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Landroid/graphics/RectF;

.field private final g:Landroid/text/SpannableStringBuilder;

.field private h:Landroid/text/Layout$Alignment;

.field private i:Landroid/text/TextPaint;

.field private j:Landroid/graphics/Paint;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field private q:Landroid/text/StaticLayout;

.field private r:F

.field private s:F

.field private t:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Landroidx/media2/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/q;->f:Landroid/graphics/RectF;

    .line 53
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/q;->g:Landroid/text/SpannableStringBuilder;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 68
    iput p1, p0, Landroidx/media2/widget/q;->r:F

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Landroidx/media2/widget/q;->s:F

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Landroidx/media2/widget/q;->t:I

    .line 85
    invoke-virtual {p0}, Landroidx/media2/widget/q;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 86
    sget p2, Landroidx/media2/widget/l$c;->media2_widget_subtitle_corner_radius:I

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/widget/q;->a:F

    .line 88
    sget p2, Landroidx/media2/widget/l$c;->media2_widget_subtitle_outline_width:I

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/widget/q;->b:F

    .line 90
    sget p2, Landroidx/media2/widget/l$c;->media2_widget_subtitle_shadow_radius:I

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/widget/q;->c:F

    .line 92
    sget p2, Landroidx/media2/widget/l$c;->media2_widget_subtitle_shadow_offset:I

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/media2/widget/q;->d:F

    .line 94
    iput p1, p0, Landroidx/media2/widget/q;->e:F

    .line 96
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/q;->i:Landroid/text/TextPaint;

    const/4 p2, 0x1

    .line 97
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 98
    iget-object p1, p0, Landroidx/media2/widget/q;->i:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 100
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/q;->j:Landroid/graphics/Paint;

    .line 101
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private d(I)Z
    .locals 12

    .line 209
    iget-boolean v0, p0, Landroidx/media2/widget/q;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/widget/q;->p:I

    if-ne p1, v0, :cond_0

    return v1

    .line 214
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/widget/q;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media2/widget/q;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/media2/widget/q;->t:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v7, p1, v0

    const/4 p1, 0x0

    if-gtz v7, :cond_1

    return p1

    .line 223
    :cond_1
    iput-boolean v1, p0, Landroidx/media2/widget/q;->o:Z

    .line 224
    iput v7, p0, Landroidx/media2/widget/q;->p:I

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    .line 226
    iget-object v0, p0, Landroidx/media2/widget/q;->g:Landroid/text/SpannableStringBuilder;

    .line 227
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Landroidx/media2/widget/q;->i:Landroid/text/TextPaint;

    invoke-static {v0, p1, v2, v3, v7}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media2/widget/q;->h:Landroid/text/Layout$Alignment;

    .line 228
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget v0, p0, Landroidx/media2/widget/q;->s:F

    iget v2, p0, Landroidx/media2/widget/q;->r:F

    .line 229
    invoke-virtual {p1, v0, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_2

    .line 231
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    .line 233
    :cond_2
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/widget/q;->q:Landroid/text/StaticLayout;

    goto :goto_0

    .line 235
    :cond_3
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v3, p0, Landroidx/media2/widget/q;->g:Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget-object v6, p0, Landroidx/media2/widget/q;->i:Landroid/text/TextPaint;

    iget-object v8, p0, Landroidx/media2/widget/q;->h:Landroid/text/Layout$Alignment;

    iget v9, p0, Landroidx/media2/widget/q;->r:F

    iget v10, p0, Landroidx/media2/widget/q;->s:F

    const/4 v11, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Landroidx/media2/widget/q;->q:Landroid/text/StaticLayout;

    :goto_0
    return v1
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/media2/widget/q;->i:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroidx/media2/widget/q;->i:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 152
    iput p1, p0, Landroidx/media2/widget/q;->t:I

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Landroidx/media2/widget/q;->o:Z

    .line 156
    invoke-virtual {p0}, Landroidx/media2/widget/q;->requestLayout()V

    .line 157
    invoke-virtual {p0}, Landroidx/media2/widget/q;->invalidate()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 120
    iput p1, p0, Landroidx/media2/widget/q;->k:I

    .line 122
    invoke-virtual {p0}, Landroidx/media2/widget/q;->invalidate()V

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Landroidx/media2/widget/q;->i:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Landroidx/media2/widget/q;->i:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Landroidx/media2/widget/q;->o:Z

    .line 167
    invoke-virtual {p0}, Landroidx/media2/widget/q;->requestLayout()V

    .line 168
    invoke-virtual {p0}, Landroidx/media2/widget/q;->invalidate()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/text/Layout$Alignment;)V
    .locals 1

    .line 173
    iget-object v0, p0, Landroidx/media2/widget/q;->h:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 174
    iput-object p1, p0, Landroidx/media2/widget/q;->h:Landroid/text/Layout$Alignment;

    const/4 p1, 0x0

    .line 176
    iput-boolean p1, p0, Landroidx/media2/widget/q;->o:Z

    .line 178
    invoke-virtual {p0}, Landroidx/media2/widget/q;->requestLayout()V

    .line 179
    invoke-virtual {p0}, Landroidx/media2/widget/q;->invalidate()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/media2/widget/q;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 111
    iget-object v0, p0, Landroidx/media2/widget/q;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Landroidx/media2/widget/q;->o:Z

    .line 115
    invoke-virtual {p0}, Landroidx/media2/widget/q;->requestLayout()V

    .line 116
    invoke-virtual {p0}, Landroidx/media2/widget/q;->invalidate()V

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 133
    iput p1, p0, Landroidx/media2/widget/q;->n:I

    .line 135
    invoke-virtual {p0}, Landroidx/media2/widget/q;->invalidate()V

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 139
    iput p1, p0, Landroidx/media2/widget/q;->m:I

    .line 141
    invoke-virtual {p0}, Landroidx/media2/widget/q;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 243
    iget-object v0, p0, Landroidx/media2/widget/q;->q:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 249
    iget v2, p0, Landroidx/media2/widget/q;->t:I

    .line 250
    invoke-virtual {p0}, Landroidx/media2/widget/q;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroidx/media2/widget/q;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 253
    iget-object v4, p0, Landroidx/media2/widget/q;->i:Landroid/text/TextPaint;

    .line 254
    iget-object v5, p0, Landroidx/media2/widget/q;->j:Landroid/graphics/Paint;

    .line 255
    iget-object v6, p0, Landroidx/media2/widget/q;->f:Landroid/graphics/RectF;

    .line 257
    iget v7, p0, Landroidx/media2/widget/q;->l:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_1

    .line 258
    iget v7, p0, Landroidx/media2/widget/q;->a:F

    .line 259
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    int-to-float v9, v9

    .line 261
    iget v10, p0, Landroidx/media2/widget/q;->l:I

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v3, :cond_1

    .line 265
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v2

    sub-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->left:F

    .line 266
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v11

    add-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->right:F

    .line 267
    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 268
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 269
    iget v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 271
    invoke-virtual {p1, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 275
    :cond_1
    iget v2, p0, Landroidx/media2/widget/q;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 277
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 278
    iget v2, p0, Landroidx/media2/widget/q;->b:F

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    iget v2, p0, Landroidx/media2/widget/q;->m:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 285
    iget v2, p0, Landroidx/media2/widget/q;->c:F

    iget v3, p0, Landroidx/media2/widget/q;->d:F

    iget v5, p0, Landroidx/media2/widget/q;->e:F

    iget v6, p0, Landroidx/media2/widget/q;->m:I

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_3

    :cond_3
    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_8

    :cond_4
    if-ne v2, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    const/4 v2, -0x1

    if-eqz v3, :cond_6

    const/4 v5, -0x1

    goto :goto_2

    .line 289
    :cond_6
    iget v5, p0, Landroidx/media2/widget/q;->m:I

    :goto_2
    if-eqz v3, :cond_7

    .line 290
    iget v2, p0, Landroidx/media2/widget/q;->m:I

    .line 291
    :cond_7
    iget v3, p0, Landroidx/media2/widget/q;->c:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    .line 293
    iget v6, p0, Landroidx/media2/widget/q;->k:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    iget v6, p0, Landroidx/media2/widget/q;->c:F

    neg-float v7, v3

    invoke-virtual {v4, v6, v7, v7, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 299
    iget v5, p0, Landroidx/media2/widget/q;->c:F

    invoke-virtual {v4, v5, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 302
    :cond_8
    :goto_3
    iget v2, p0, Landroidx/media2/widget/q;->k:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 307
    invoke-virtual {v4, v0, v0, v0, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 308
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 204
    invoke-direct {p0, p4}, Landroidx/media2/widget/q;->d(I)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 185
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 187
    invoke-direct {p0, p1}, Landroidx/media2/widget/q;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Landroidx/media2/widget/q;->q:Landroid/text/StaticLayout;

    .line 191
    invoke-virtual {p0}, Landroidx/media2/widget/q;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroidx/media2/widget/q;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Landroidx/media2/widget/q;->t:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 192
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 193
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/media2/widget/q;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/media2/widget/q;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 194
    invoke-virtual {p0, v0, p1}, Landroidx/media2/widget/q;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/high16 p1, 0x1000000

    .line 196
    invoke-virtual {p0, p1, p1}, Landroidx/media2/widget/q;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 127
    iput p1, p0, Landroidx/media2/widget/q;->l:I

    .line 129
    invoke-virtual {p0}, Landroidx/media2/widget/q;->invalidate()V

    return-void
.end method
